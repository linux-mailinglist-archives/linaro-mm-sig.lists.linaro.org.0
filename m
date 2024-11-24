Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5519D70DF
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 24 Nov 2024 14:41:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5552F3F56F
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 24 Nov 2024 13:41:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C72A73F56F
	for <linaro-mm-sig@lists.linaro.org>; Sun, 24 Nov 2024 13:41:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bL+1RWdN;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C4E625C04E5;
	Sun, 24 Nov 2024 13:40:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93B1CC4CED3;
	Sun, 24 Nov 2024 13:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732455680;
	bh=jVug0B5z0yu25jHuiw9klU8LOF+X8Zb4FdA8H54E8Dc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bL+1RWdN3Y9oXYTlDtUjDEgmYO4eAGq7GBu3qDJRIdTm5z8JqSRl6I/cOqdYYHDOc
	 zkOfs7p4plmhag+C7lq2TcFUCk9o3/b1st7Gk1gz1ut6JlyLNgLcjS6h5yGX9VcRPv
	 UaqshYRyOarDZpujr+3Gn7Oo6yqINARSzvcwiiH2PV9TVeTR54B3GToWN/Yaw7OaPK
	 vvWKwzfS1w4YHszfErygysk3b1LYAPndmM4AeIKsu9L5D58bQEXsO7PwsxQb3b5aJL
	 U8ljr66JSLLAr5ARerM1w8ObuhyzoyrqI+cOdDlvalBYobN53RNVIV3bTfnMoYyawA
	 q31Ir1SmSdMJg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 24 Nov 2024 08:37:46 -0500
Message-ID: <20241124134102.3344326-8-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241124134102.3344326-1-sashal@kernel.org>
References: <20241124134102.3344326-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.11.10
X-Rspamd-Queue-Id: C72A73F56F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TPNIPXGAKUHGZB3O4FGTDAFFAHQI76DK
X-Message-ID-Hash: TPNIPXGAKUHGZB3O4FGTDAFFAHQI76DK
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Huan Yang <link@vivo.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sasha Levin <sashal@kernel.org>, kraxel@redhat.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 6.11 08/87] udmabuf: change folios array from kmalloc to kvmalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TPNIPXGAKUHGZB3O4FGTDAFFAHQI76DK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogSHVhbiBZYW5nIDxsaW5rQHZpdm8uY29tPg0KDQpbIFVwc3RyZWFtIGNvbW1pdCAxYzA4
NDRjNjE4NGU2NTgwNjRlMTRjNDMzNTg4NTc4NWFkM2JmODRiIF0NCg0KV2hlbiBQQUdFX1NJWkUg
NDA5NiwgTUFYX1BBR0VfT1JERVIgMTAsIDY0Yml0IG1hY2hpbmUsDQpwYWdlX2FsbG9jIG9ubHkg
c3VwcG9ydCA0TUIuDQpJZiBhYm92ZSB0aGlzLCB0cmlnZ2VyIHRoaXMgd2FybiBhbmQgcmV0dXJu
IE5VTEwuDQoNCnVkbWFidWYgY2FuIGNoYW5nZSBzaXplIGxpbWl0LCBpZiBjaGFuZ2UgaXQgdG8g
MzA3MigzR0IpLCBhbmQgdGhlbiBhbGxvYw0KM0dCIHVkbWFidWYsIHdpbGwgZmFpbCBjcmVhdGUu
DQoNClsgNDA4MC44NzY1ODFdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQ0K
WyA0MDgwLjg3Njg0M10gV0FSTklORzogQ1BVOiAzIFBJRDogMjAxNSBhdCBtbS9wYWdlX2FsbG9j
LmM6NDU1NiBfX2FsbG9jX3BhZ2VzKzB4MmM4LzB4MzUwDQpbIDQwODAuODc4ODM5XSBSSVA6IDAw
MTA6X19hbGxvY19wYWdlcysweDJjOC8weDM1MA0KWyA0MDgwLjg3OTQ3MF0gQ2FsbCBUcmFjZToN
ClsgNDA4MC44Nzk0NzNdICA8VEFTSz4NClsgNDA4MC44Nzk0NzNdICA/IF9fYWxsb2NfcGFnZXMr
MHgyYzgvMHgzNTANClsgNDA4MC44Nzk0NzVdICA/IF9fd2Fybi5jb2xkKzB4OGUvMHhlOA0KWyA0
MDgwLjg4MDY0N10gID8gX19hbGxvY19wYWdlcysweDJjOC8weDM1MA0KWyA0MDgwLjg4MDkwOV0g
ID8gcmVwb3J0X2J1ZysweGZmLzB4MTQwDQpbIDQwODAuODgxMTc1XSAgPyBoYW5kbGVfYnVnKzB4
M2MvMHg4MA0KWyA0MDgwLjg4MTU1Nl0gID8gZXhjX2ludmFsaWRfb3ArMHgxNy8weDcwDQpbIDQw
ODAuODgxNTU5XSAgPyBhc21fZXhjX2ludmFsaWRfb3ArMHgxYS8weDIwDQpbIDQwODAuODgyMDc3
XSAgPyB1ZG1hYnVmX2NyZWF0ZSsweDEzMS8weDQwMA0KDQpCZWNhdXNlIE1BWF9QQUdFX09SREVS
LCBrbWFsbG9jIGNhbiBtYXggYWxsb2MgNDA5NiAqICgxIDw8IDEwKSwgNE1CDQptZW1vcnksIGVh
Y2ggYXJyYXkgZW50cnkgaXMgcG9pbnRlcig4Ynl0ZSksIHNvIGNhbiBzYXZlIDUyNDI4OCBwYWdl
cygyR0IpLg0KDQpGdXJ0aGVyIG1vcmUsIGNvc3RseSBvcmRlcihvcmRlciAzKSBtYXkgbm90IGJl
IGd1YXJhbnRlZWQgdGhhdCBpdCBjYW4gYmUNCmFwcGxpZWQgZm9yLCBkdWUgdG8gZnJhZ21lbnRh
dGlvbi4NCg0KVGhpcyBwYXRjaCBjaGFuZ2UgdWRtYWJ1ZiBhcnJheSB1c2Uga3ZtYWxsb2NfYXJy
YXksIHRoaXMgY2FuIGZhbGxiYWNrDQphbGxvYyBpbnRvIHZtYWxsb2MsIHdoaWNoIGNhbiBndWFy
YW50ZWUgYWxsb2NhdGlvbiBmb3IgYW55IHNpemUgYW5kIGRvZXMNCm5vdCBhZmZlY3QgdGhlIHBl
cmZvcm1hbmNlIG9mIGttYWxsb2MgYWxsb2NhdGlvbnMuDQoNClNpZ25lZC1vZmYtYnk6IEh1YW4g
WWFuZyA8bGlua0B2aXZvLmNvbT4NCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQpBY2tlZC1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNp
cmVkZHlAaW50ZWwuY29tPg0KU2lnbmVkLW9mZi1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5r
YXNpcmVkZHlAaW50ZWwuY29tPg0KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3BhdGNoL21zZ2lkLzIwMjQwOTE4MDI1MjM4LjI5NTc4MjMtMy1saW5rQHZpdm8uY29tDQpT
aWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+DQotLS0NCiBkcml2
ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIHwgMjYgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0NCiAx
IGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQoNCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFi
dWYuYw0KaW5kZXggMDQ3YzNjZDJjZWZmZi4uYmM5NGMxOTRlMTcyZCAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMN
CkBAIC04MCw3ICs4MCw3IEBAIHN0YXRpYyBpbnQgdm1hcF91ZG1hYnVmKHN0cnVjdCBkbWFfYnVm
ICpidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCiANCiAJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQo
YnVmLT5yZXN2KTsNCiANCi0JcGFnZXMgPSBrbWFsbG9jX2FycmF5KHVidWYtPnBhZ2Vjb3VudCwg
c2l6ZW9mKCpwYWdlcyksIEdGUF9LRVJORUwpOw0KKwlwYWdlcyA9IGt2bWFsbG9jX2FycmF5KHVi
dWYtPnBhZ2Vjb3VudCwgc2l6ZW9mKCpwYWdlcyksIEdGUF9LRVJORUwpOw0KIAlpZiAoIXBhZ2Vz
KQ0KIAkJcmV0dXJuIC1FTk9NRU07DQogDQpAQCAtODgsNyArODgsNyBAQCBzdGF0aWMgaW50IHZt
YXBfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQog
CQlwYWdlc1twZ10gPSAmdWJ1Zi0+Zm9saW9zW3BnXS0+cGFnZTsNCiANCiAJdmFkZHIgPSB2bV9t
YXBfcmFtKHBhZ2VzLCB1YnVmLT5wYWdlY291bnQsIC0xKTsNCi0Ja2ZyZWUocGFnZXMpOw0KKwlr
dmZyZWUocGFnZXMpOw0KIAlpZiAoIXZhZGRyKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQogDQpAQCAt
MTk2LDggKzE5Niw4IEBAIHN0YXRpYyB2b2lkIHJlbGVhc2VfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1
ZiAqYnVmKQ0KIAkJcHV0X3NnX3RhYmxlKGRldiwgdWJ1Zi0+c2csIERNQV9CSURJUkVDVElPTkFM
KTsNCiANCiAJdW5waW5fYWxsX2ZvbGlvcygmdWJ1Zi0+dW5waW5fbGlzdCk7DQotCWtmcmVlKHVi
dWYtPm9mZnNldHMpOw0KLQlrZnJlZSh1YnVmLT5mb2xpb3MpOw0KKwlrdmZyZWUodWJ1Zi0+b2Zm
c2V0cyk7DQorCWt2ZnJlZSh1YnVmLT5mb2xpb3MpOw0KIAlrZnJlZSh1YnVmKTsNCiB9DQogDQpA
QCAtMzIyLDE0ICszMjIsMTQgQEAgc3RhdGljIGxvbmcgdWRtYWJ1Zl9jcmVhdGUoc3RydWN0IG1p
c2NkZXZpY2UgKmRldmljZSwNCiAJaWYgKCF1YnVmLT5wYWdlY291bnQpDQogCQlnb3RvIGVycjsN
CiANCi0JdWJ1Zi0+Zm9saW9zID0ga21hbGxvY19hcnJheSh1YnVmLT5wYWdlY291bnQsIHNpemVv
ZigqdWJ1Zi0+Zm9saW9zKSwNCi0JCQkJICAgIEdGUF9LRVJORUwpOw0KKwl1YnVmLT5mb2xpb3Mg
PSBrdm1hbGxvY19hcnJheSh1YnVmLT5wYWdlY291bnQsIHNpemVvZigqdWJ1Zi0+Zm9saW9zKSwN
CisJCQkJICAgICAgR0ZQX0tFUk5FTCk7DQogCWlmICghdWJ1Zi0+Zm9saW9zKSB7DQogCQlyZXQg
PSAtRU5PTUVNOw0KIAkJZ290byBlcnI7DQogCX0NCi0JdWJ1Zi0+b2Zmc2V0cyA9IGtjYWxsb2Mo
dWJ1Zi0+cGFnZWNvdW50LCBzaXplb2YoKnVidWYtPm9mZnNldHMpLA0KLQkJCQlHRlBfS0VSTkVM
KTsNCisJdWJ1Zi0+b2Zmc2V0cyA9IGt2Y2FsbG9jKHVidWYtPnBhZ2Vjb3VudCwgc2l6ZW9mKCp1
YnVmLT5vZmZzZXRzKSwNCisJCQkJIEdGUF9LRVJORUwpOw0KIAlpZiAoIXVidWYtPm9mZnNldHMp
IHsNCiAJCXJldCA9IC1FTk9NRU07DQogCQlnb3RvIGVycjsNCkBAIC0zNDMsNyArMzQzLDcgQEAg
c3RhdGljIGxvbmcgdWRtYWJ1Zl9jcmVhdGUoc3RydWN0IG1pc2NkZXZpY2UgKmRldmljZSwNCiAJ
CQlnb3RvIGVycjsNCiANCiAJCXBnY250ID0gbGlzdFtpXS5zaXplID4+IFBBR0VfU0hJRlQ7DQot
CQlmb2xpb3MgPSBrbWFsbG9jX2FycmF5KHBnY250LCBzaXplb2YoKmZvbGlvcyksIEdGUF9LRVJO
RUwpOw0KKwkJZm9saW9zID0ga3ZtYWxsb2NfYXJyYXkocGdjbnQsIHNpemVvZigqZm9saW9zKSwg
R0ZQX0tFUk5FTCk7DQogCQlpZiAoIWZvbGlvcykgew0KIAkJCXJldCA9IC1FTk9NRU07DQogCQkJ
Z290byBlcnI7DQpAQCAtMzUzLDcgKzM1Myw3IEBAIHN0YXRpYyBsb25nIHVkbWFidWZfY3JlYXRl
KHN0cnVjdCBtaXNjZGV2aWNlICpkZXZpY2UsDQogCQlyZXQgPSBtZW1mZF9waW5fZm9saW9zKG1l
bWZkLCBsaXN0W2ldLm9mZnNldCwgZW5kLA0KIAkJCQkgICAgICAgZm9saW9zLCBwZ2NudCwgJnBn
b2ZmKTsNCiAJCWlmIChyZXQgPD0gMCkgew0KLQkJCWtmcmVlKGZvbGlvcyk7DQorCQkJa3ZmcmVl
KGZvbGlvcyk7DQogCQkJaWYgKCFyZXQpDQogCQkJCXJldCA9IC1FSU5WQUw7DQogCQkJZ290byBl
cnI7DQpAQCAtMzgyLDcgKzM4Miw3IEBAIHN0YXRpYyBsb25nIHVkbWFidWZfY3JlYXRlKHN0cnVj
dCBtaXNjZGV2aWNlICpkZXZpY2UsDQogCQkJfQ0KIAkJfQ0KIA0KLQkJa2ZyZWUoZm9saW9zKTsN
CisJCWt2ZnJlZShmb2xpb3MpOw0KIAkJZnB1dChtZW1mZCk7DQogCQltZW1mZCA9IE5VTEw7DQog
CX0NCkBAIC0zOTgsOCArMzk4LDggQEAgc3RhdGljIGxvbmcgdWRtYWJ1Zl9jcmVhdGUoc3RydWN0
IG1pc2NkZXZpY2UgKmRldmljZSwNCiAJaWYgKG1lbWZkKQ0KIAkJZnB1dChtZW1mZCk7DQogCXVu
cGluX2FsbF9mb2xpb3MoJnVidWYtPnVucGluX2xpc3QpOw0KLQlrZnJlZSh1YnVmLT5vZmZzZXRz
KTsNCi0Ja2ZyZWUodWJ1Zi0+Zm9saW9zKTsNCisJa3ZmcmVlKHVidWYtPm9mZnNldHMpOw0KKwlr
dmZyZWUodWJ1Zi0+Zm9saW9zKTsNCiAJa2ZyZWUodWJ1Zik7DQogCXJldHVybiByZXQ7DQogfQ0K
LS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
