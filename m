Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F1673786883
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 09:37:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03ACD3F637
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 07:37:53 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 0AF343F672
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 07:37:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gQOOTQq4;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A3EA365A43;
	Thu, 24 Aug 2023 07:37:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 255C8C433CB;
	Thu, 24 Aug 2023 07:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692862668;
	bh=IT6/DarMvmMgdLtxu3NMd59P2v8//LyIHppUeTYy7M0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gQOOTQq40SZxFdCDuPINT253cTqh+jYadnV4m+daQzfRci08lhPVD8EBKeBYgHHON
	 dk+L+cbR9JXP7MYaIVXnjW+CPBzVy3SxSO44a69XY+zpWlttfVKe52meQMWvfV5Kwc
	 f1fOfAh3hPBZPdd0aTGNEVzgFzK6CqG4nsHDHvbbfBpdMKTRu4sHCsLIJNZqHvfAwc
	 98DEOQ/Cth0Dw7iDGnagjYLWHHUL+xod0710oP/AJK5nTHQdDFkj6oKXnr1NPbmlJG
	 E3p5p9ysO1RW4pU/cBpPBftTo1VVQ3SrzXlFuagdims9uLEuzey2XR1/ziD2QXGElY
	 31VS+AIue8RYw==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Thu, 24 Aug 2023 08:36:53 +0100
Message-ID: <20230824073710.2677348-9-lee@kernel.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824073710.2677348-1-lee@kernel.org>
References: <20230824073710.2677348-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 0AF343F672
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linaro.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: F6IUKNTWXIRO2R2Z5HWFXPZ32GV6J2CL
X-Message-ID-Hash: F6IUKNTWXIRO2R2Z5HWFXPZ32GV6J2CL
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Stanley Yang <Stanley.Yang@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/20] drm/amd/amdgpu/sdma_v6_0: Demote a bunch of half-completed function headers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F6IUKNTWXIRO2R2Z5HWFXPZ32GV6J2CL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzoyNDg6IHdhcm5pbmc6IEZ1bmN0aW9u
IHBhcmFtZXRlciBvciBtZW1iZXIgJ2pvYicgbm90IGRlc2NyaWJlZCBpbiAnc2RtYV92Nl8wX3Jp
bmdfZW1pdF9pYicNCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzoyNDg6
IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2ZsYWdzJyBub3QgZGVzY3Jp
YmVkIGluICdzZG1hX3Y2XzBfcmluZ19lbWl0X2liJw0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L3NkbWFfdjZfMC5jOjk0NTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJl
ciAndGltZW91dCcgbm90IGRlc2NyaWJlZCBpbiAnc2RtYV92Nl8wX3JpbmdfdGVzdF9pYicNCiBk
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzoxMTI0OiB3YXJuaW5nOiBGdW5j
dGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdyaW5nJyBub3QgZGVzY3JpYmVkIGluICdzZG1hX3Y2
XzBfcmluZ19wYWRfaWInDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Nl8wLmM6
MTE3NTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAndm1pZCcgbm90IGRl
c2NyaWJlZCBpbiAnc2RtYV92Nl8wX3JpbmdfZW1pdF92bV9mbHVzaCcNCiBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzoxMTc1OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0
ZXIgb3IgbWVtYmVyICdwZF9hZGRyJyBub3QgZGVzY3JpYmVkIGluICdzZG1hX3Y2XzBfcmluZ19l
bWl0X3ZtX2ZsdXNoJw0KDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQotLS0N
ClNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+DQpDYzogQWxleCBEZXVj
aGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6ICJQYW4sIFhpbmh1aSIgPFhpbmh1aS5QYW5A
YW1kLmNvbT4NCkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KQ2M6IERhbmll
bCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPg0KQ2M6IFN0YW5sZXkgWWFuZyA8U3RhbmxleS5ZYW5nQGFtZC5jb20+DQpD
YzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQotLS0NCiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYyB8IDggKysrKy0tLS0NCiAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Nl8wLmMgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9zZG1hX3Y2XzAuYw0KaW5kZXggNDViZTBhZjI1NzBiMi4uMGUyNWI2ZmIxMzQw
NCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjZfMC5jDQor
KysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYw0KQEAgLTIzNCw3ICsy
MzQsNyBAQCBzdGF0aWMgdm9pZCBzZG1hX3Y2XzBfcmluZ19pbnNlcnRfbm9wKHN0cnVjdCBhbWRn
cHVfcmluZyAqcmluZywgdWludDMyX3QgY291bnQpDQogCQkJYW1kZ3B1X3Jpbmdfd3JpdGUocmlu
ZywgcmluZy0+ZnVuY3MtPm5vcCk7DQogfQ0KIA0KLS8qKg0KKy8qDQogICogc2RtYV92Nl8wX3Jp
bmdfZW1pdF9pYiAtIFNjaGVkdWxlIGFuIElCIG9uIHRoZSBETUEgZW5naW5lDQogICoNCiAgKiBA
cmluZzogYW1kZ3B1IHJpbmcgcG9pbnRlcg0KQEAgLTkzNyw3ICs5MzcsNyBAQCBzdGF0aWMgaW50
IHNkbWFfdjZfMF9yaW5nX3Rlc3RfcmluZyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcpDQogCXJl
dHVybiByOw0KIH0NCiANCi0vKioNCisvKg0KICAqIHNkbWFfdjZfMF9yaW5nX3Rlc3RfaWIgLSB0
ZXN0IGFuIElCIG9uIHRoZSBETUEgZW5naW5lDQogICoNCiAgKiBAcmluZzogYW1kZ3B1X3Jpbmcg
c3RydWN0dXJlIGhvbGRpbmcgcmluZyBpbmZvcm1hdGlvbg0KQEAgLTExMTksNyArMTExOSw3IEBA
IHN0YXRpYyB2b2lkIHNkbWFfdjZfMF92bV9zZXRfcHRlX3BkZShzdHJ1Y3QgYW1kZ3B1X2liICpp
YiwNCiAJaWItPnB0cltpYi0+bGVuZ3RoX2R3KytdID0gY291bnQgLSAxOyAvKiBudW1iZXIgb2Yg
ZW50cmllcyAqLw0KIH0NCiANCi0vKioNCisvKg0KICAqIHNkbWFfdjZfMF9yaW5nX3BhZF9pYiAt
IHBhZCB0aGUgSUINCiAgKiBAaWI6IGluZGlyZWN0IGJ1ZmZlciB0byBmaWxsIHdpdGggcGFkZGlu
Zw0KICAqIEByaW5nOiBhbWRncHUgcmluZyBwb2ludGVyDQpAQCAtMTE2OCw3ICsxMTY4LDcgQEAg
c3RhdGljIHZvaWQgc2RtYV92Nl8wX3JpbmdfZW1pdF9waXBlbGluZV9zeW5jKHN0cnVjdCBhbWRn
cHVfcmluZyAqcmluZykNCiAJCQkgIFNETUFfUEtUX1BPTExfUkVHTUVNX0RXNV9JTlRFUlZBTCg0
KSk7IC8qIHJldHJ5IGNvdW50LCBwb2xsIGludGVydmFsICovDQogfQ0KIA0KLS8qKg0KKy8qDQog
ICogc2RtYV92Nl8wX3JpbmdfZW1pdF92bV9mbHVzaCAtIHZtIGZsdXNoIHVzaW5nIHNETUENCiAg
Kg0KICAqIEByaW5nOiBhbWRncHVfcmluZyBwb2ludGVyDQotLSANCjIuNDIuMC5yYzEuMjA0Lmc1
NTFlYjM0NjA3LWdvb2cNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
