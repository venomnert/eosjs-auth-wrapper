defmodule EosjsAuthWrapper do
  @moduledoc """
  API for invoking EOSJS-ECC functions
  """

  @doc """
  Fetch account info.

  Returns {:ok, %{"ok" => %{"account_name" => "nertnertn123", ...}}}

  ## Examples

      iex> EosjsAuthWrapper.get_account_info("testtest1234")
      {:ok, %{"ok" => %{"account_name" => "nertnertn123", ...}}}

  """
  def get_account_info(account) do
    NodeJS.call({"app", :accountToPublicKey}, [account])
  end

  @doc """
  Fetch account associated with the public key.

  Returns {:ok, %{"ok" => %{"account_names" => ["nertnertn123"]}}}

  ## Examples

      iex> EosjsAuthWrapper.get_account_from_pub_key("some_valid_pub_key")
      {:ok, %{"ok" => %{"account_names" => ["nertnertn123"]}}}

  """
  def get_account_from_pub_key(pub_key) do
    NodeJS.call({"app", :publicKeyToAccount}, [pub_key])
  end

  @doc """
  Generate signature.

  Returns {:ok, %{"signature" => sign}}

  ## Examples

      iex> EosjsAuthWrapper.sign("this is a phrase", "some_valid_secret_key")
      {:ok, %{"signature" => "SIG_K1_K9czKUnnXcrsVHoADF979AFMRfdq3h9pFZuR8Y5u7zHdVrXZLDwkvsP4fKkN2vPW1tHSNJP8eBjo23u4o31e809f2k"}}

  """
  def sign(phrase, priv_key) do
    NodeJS.call({"app", :sign}, [phrase, priv_key])
  end

  @doc """
  Verify signature.

  Returns {:ok, true}

  ## Examples

      iex> EosjsAuthWrapper.verify("some sighnature", "this is a phrase", "some_valid_pub_key")
      {:ok, false}

  """
  def verify(sign, phrase, pub_key) do
    NodeJS.call({"app", :verify}, [sign, phrase, pub_key])
  end

  defp get_auth_ecdsa_points(sign, phrase) do
    NodeJS.call({"app", :publicKeyPoints}, [sign, phrase])
  end

  defp gen_rand_signature(phrase) do
    NodeJS.call({"app", :signWithRandom}, [phrase])
  end
end
