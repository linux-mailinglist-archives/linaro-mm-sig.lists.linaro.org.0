Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D334AE8E2F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Jun 2025 21:12:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A23045610
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Jun 2025 19:12:40 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B47BF3F575
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Jun 2025 19:12:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=jQXCQmT8;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EFDBE4B26A;
	Wed, 25 Jun 2025 19:12:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC099C4CEEE;
	Wed, 25 Jun 2025 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750878747;
	bh=+qriwj9qU4FY/kuIp4wDLlM/t8OqijQo1R2YW3zdLuU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jQXCQmT8D2h0EMiy0LeKaMVgq4MMLwiB5Ojl9jxZUv3lfWTMXOdg/Ik0UrDQyUSjL
	 4MyfWPrrhsFgzVudtvHgpM62ZTCCpPxy35fmIvUUFQNGqTyaa+MlvHiuIsfLG1LPq7
	 DqO/X6euoQBAnIVWUFCtnMvL/ngetC26Gn7NfJVTg6zqih6MrgmXqtLPNUAMhF8Dyl
	 MqUCjuQmArTDzS7IxOthC7s73wiH1W/851Whej89BlsJAhXIvMsYOcLLDNVEoVpD4k
	 IO0k5pr5rxMRmHCfbJBy4JwocPtv2E4fPF/CDD2INuRNUBPSpXrHi/aKwXrLqj48Gf
	 MZhLmOg8QqPSA==
From: Mark Brown <broonie@kernel.org>
To: Alain Volmat <alain.volmat@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Valentin Caron <valentin.caron@foss.st.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Erwan Leray <erwan.leray@foss.st.com>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
In-Reply-To: <20250616-spi-upstream-v1-0-7e8593f3f75d@foss.st.com>
References: <20250616-spi-upstream-v1-0-7e8593f3f75d@foss.st.com>
Message-Id: <175087874236.261602.8727707950137724434.b4-ty@kernel.org>
Date: Wed, 25 Jun 2025 20:12:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-08c49
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B47BF3F575
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.44 / 15.00];
	BAYES_HAM(-2.94)[99.74%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[foss.st.com,gmail.com,kernel.org,linaro.org,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: FYRQOVS4PG22G2MTZKB4M2FYPD6A7LGD
X-Message-ID-Hash: FYRQOVS4PG22G2MTZKB4M2FYPD6A7LGD
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-spi@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel test robot <lkp@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/6] Add few updates to the STM32 SPI driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FYRQOVS4PG22G2MTZKB4M2FYPD6A7LGD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

T24gTW9uLCAxNiBKdW4gMjAyNSAxMToyMTowMSArMDIwMCwgQ2zDqW1lbnQgTGUgR29mZmljIHdy
b3RlOg0KPiBUaGlzIHNlcmllcyBhaW1zIHRvIGltcHJvdmUgdGhlIFNUTTMyIFNQSSBkcml2ZXIg
aW4gZGlmZmVyZW50IGFyZWFzLg0KPiBJdCBhZGRzIFNQSV9SRUFEWSBtb2RlLCBmaXhlcyBhbiBp
c3N1ZSByYWlzZWQgYnkgYSBrZXJuZWwgYm90LA0KPiBhZGQgdGhlIGFiaWxpdHkgdG8gdXNlIERN
QS1NRE1BIGNoYWluaW5nIGZvciBSWCBhbmQgZGVwcmVjYXRlIGFuIFNUIGJpbmRpbmdzDQo+IHZl
bmRvciBwcm9wZXJ0eS4NCj4gDQo+IA0KDQpBcHBsaWVkIHRvDQoNCiAgIGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Jyb29uaWUvc3BpLmdpdCBmb3ItbmV4
dA0KDQpUaGFua3MhDQoNClsxLzZdIHNwaTogc3RtMzI6IEFkZCBTUElfUkVBRFkgbW9kZSB0byBz
cGkgY29udHJvbGxlcg0KICAgICAgY29tbWl0OiBlNGZlZWZhNWM3MTkxMmViZmNiOTdhM2RiZTJi
MDIxZmQxY2VhOWQxDQpbMi82XSBzcGk6IHN0bTMyOiBDaGVjayBmb3IgY2ZnIGF2YWlsYWJpbGl0
eSBpbiBzdG0zMl9zcGlfcHJvYmUNCiAgICAgIGNvbW1pdDogMjFmMWM4MDBmNjYyMGU0M2YzMWRm
ZDc2NzA5ZGJhYzhlYmFhNWExNg0KWzMvNl0gZHQtYmluZGluZ3M6IHNwaTogc3RtMzI6IHVwZGF0
ZSBiaW5kaW5ncyB3aXRoIFNQSSBSeCBETUEtTURNQSBjaGFpbmluZw0KICAgICAgY29tbWl0OiBi
ZDYwZjk0YTNlYjRmODBjYjY2Yzk2ODdkNjQwNTU0ZmQwYzU3OWQwDQpbNC82XSBzcGk6IHN0bTMy
OiB1c2UgU1RNMzIgRE1BIHdpdGggU1RNMzIgTURNQSB0byBlbmhhbmNlIEREUiB1c2UNCiAgICAg
IGNvbW1pdDogZDE3ZGQyZjFkOGExZDkxOWUzOWM2MzAyYjAyNGYxMzVhMmY5MDc3Mw0KWzUvNl0g
c3BpOiBzdG0zMjogZGVwcmVjYXRlIGBzdCxzcGktbWlkaS1uc2AgcHJvcGVydHkNCiAgICAgIGNv
bW1pdDogNDk1NmJmNDQ1MjQzOTQyMTFjYTgwYWEwNGQwYzllMWU5YmIwMjE5ZA0KWzYvNl0gZHQt
YmluZGluZ3M6IHNwaTogc3RtMzI6IGRlcHJlY2F0ZSBgc3Qsc3BpLW1pZGktbnNgIHByb3BlcnR5
DQogICAgICBjb21taXQ6IDlhOTQ0NDk0YzI5OWZhYmYzY2M3ODE3OThlYjdjMDJhMGJlY2UzNjQN
Cg0KQWxsIGJlaW5nIHdlbGwgdGhpcyBtZWFucyB0aGF0IGl0IHdpbGwgYmUgaW50ZWdyYXRlZCBp
bnRvIHRoZSBsaW51eC1uZXh0DQp0cmVlICh1c3VhbGx5IHNvbWV0aW1lIGluIHRoZSBuZXh0IDI0
IGhvdXJzKSBhbmQgc2VudCB0byBMaW51cyBkdXJpbmcNCnRoZSBuZXh0IG1lcmdlIHdpbmRvdyAo
b3Igc29vbmVyIGlmIGl0IGlzIGEgYnVnIGZpeCksIGhvd2V2ZXIgaWYNCnByb2JsZW1zIGFyZSBk
aXNjb3ZlcmVkIHRoZW4gdGhlIHBhdGNoIG1heSBiZSBkcm9wcGVkIG9yIHJldmVydGVkLg0KDQpZ
b3UgbWF5IGdldCBmdXJ0aGVyIGUtbWFpbHMgcmVzdWx0aW5nIGZyb20gYXV0b21hdGVkIG9yIG1h
bnVhbCB0ZXN0aW5nDQphbmQgcmV2aWV3IG9mIHRoZSB0cmVlLCBwbGVhc2UgZW5nYWdlIHdpdGgg
cGVvcGxlIHJlcG9ydGluZyBwcm9ibGVtcyBhbmQNCnNlbmQgZm9sbG93dXAgcGF0Y2hlcyBhZGRy
ZXNzaW5nIGFueSBpc3N1ZXMgdGhhdCBhcmUgcmVwb3J0ZWQgaWYgbmVlZGVkLg0KDQpJZiBhbnkg
dXBkYXRlcyBhcmUgcmVxdWlyZWQgb3IgeW91IGFyZSBzdWJtaXR0aW5nIGZ1cnRoZXIgY2hhbmdl
cyB0aGV5DQpzaG91bGQgYmUgc2VudCBhcyBpbmNyZW1lbnRhbCB1cGRhdGVzIGFnYWluc3QgY3Vy
cmVudCBnaXQsIGV4aXN0aW5nDQpwYXRjaGVzIHdpbGwgbm90IGJlIHJlcGxhY2VkLg0KDQpQbGVh
c2UgYWRkIGFueSByZWxldmFudCBsaXN0cyBhbmQgbWFpbnRhaW5lcnMgdG8gdGhlIENDcyB3aGVu
IHJlcGx5aW5nDQp0byB0aGlzIG1haWwuDQoNClRoYW5rcywNCk1hcmsNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
