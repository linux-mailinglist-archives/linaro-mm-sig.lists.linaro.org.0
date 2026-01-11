Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D728D0E96E
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 11 Jan 2026 11:37:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C57B401B7
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 11 Jan 2026 10:37:26 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id BB7433F827
	for <linaro-mm-sig@lists.linaro.org>; Sun, 11 Jan 2026 10:37:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GJfxDiwS;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0808560010;
	Sun, 11 Jan 2026 10:37:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E15DC4CEF7;
	Sun, 11 Jan 2026 10:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768127839;
	bh=XZA4z75ZOHA3aBBuy9XF0n0lJ74IuJtROdjB9F6LTwg=;
	h=From:To:Cc:Subject:Date:From;
	b=GJfxDiwSgzusKIQpJZPvotpXqneRfIW4Aw0aoP73c8C0uMUG2kZo2uFwS4W+jq8Z/
	 ScyO11QB8QX+9Wp0ZPkxN5mbCMu8rBJk+2uz0yb2ZME/2iwTVCKsF6124sJPF8Y58m
	 nCjdl0+oRyz1N224ttGKmOFL8AElqtrQei4VQRO8+UEBiVJxjxr9rLvjYvfGd243co
	 pAQ96WtNcurKnh+UHt2hfeCfpNOmGe6+mOI9/4GVuhENuJItjyZHEsqeJTvzBNm9kh
	 Z4bM3XW0wzDb6a7RZldoMydvWeT6tErDqQScE1ckUiHKNtOMHLhvXEJ2yjzPH32R97
	 102Te8QiEqXTg==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Alex Williamson <alex@shazbot.org>,
	Kevin Tian <kevin.tian@intel.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>
Date: Sun, 11 Jan 2026 12:37:07 +0200
Message-ID: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20251221-dmabuf-revoke-b90ef16e4236
X-Mailer: b4 0.15-dev-a6db3
X-Rspamd-Queue-Id: BB7433F827
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[linux.dev:email,linaro.org:email,8bytes.org:email,lists.freedesktop.org:email,ziepe.ca:email,tor.source.kernel.org:helo,tor.source.kernel.org:rdns];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: R4YUQMPGCZSZLAIJWEYHHB2A3BE7S5JN
X-Message-ID-Hash: R4YUQMPGCZSZLAIJWEYHHB2A3BE7S5JN
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/4] dma-buf: add revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R4YUQMPGCZSZLAIJWEYHHB2A3BE7S5JN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

VGhpcyBzZXJpZXMgaW1wbGVtZW50cyBhIGRtYS1idWYg4oCccmV2b2tl4oCdIG1lY2hhbmlzbTog
dG8gYWxsb3cgYSBkbWEtYnVmDQpleHBvcnRlciB0byBleHBsaWNpdGx5IGludmFsaWRhdGUgKOKA
nGtpbGzigJ0pIGEgc2hhcmVkIGJ1ZmZlciBhZnRlciBpdCBoYXMNCmJlZW4gZGlzdHJpYnV0ZWQg
dG8gaW1wb3J0ZXJzLCBzbyB0aGF0IGZ1cnRoZXIgQ1BVIGFuZCBkZXZpY2UgYWNjZXNzIGlzDQpw
cmV2ZW50ZWQgYW5kIGltcG9ydGVycyByZWxpYWJseSBvYnNlcnZlIGZhaWx1cmUuDQoNClRvZGF5
LCBkbWEtYnVmIGVmZmVjdGl2ZWx5IHByb3ZpZGVzIOKAnGlmIHlvdSBoYXZlIHRoZSBmZCwgeW91
IGNhbiBrZWVwIHVzaW5nDQp0aGUgbWVtb3J5IGluZGVmaW5pdGVseS7igJ0gVGhhdCBhc3N1bXB0
aW9uIGJyZWFrcyBkb3duIHdoZW4gYW4gZXhwb3J0ZXIgbXVzdA0KcmVjbGFpbSwgcmVzZXQsIGV2
aWN0LCBvciBvdGhlcndpc2UgcmV0aXJlIGJhY2tpbmcgbWVtb3J5IGFmdGVyIGl0IGhhcyBiZWVu
DQpzaGFyZWQuIENvbmNyZXRlIGNhc2VzIGluY2x1ZGUgR1BVIHJlc2V0IGFuZCByZWNvdmVyeSB3
aGVyZSBvbGQgYWxsb2NhdGlvbnMNCmJlY29tZSB1bnNhZmUgdG8gYWNjZXNzLCBtZW1vcnkgZXZp
Y3Rpb24vb3ZlcmNvbW1pdCB3aGVyZSBiYWNraW5nIHN0b3JhZ2UNCm11c3QgYmUgd2l0aGRyYXdu
LCBhbmQgc2VjdXJpdHkgb3IgaXNvbGF0aW9uIHNpdHVhdGlvbnMgd2hlcmUgY29udGludWVkIGFj
Y2Vzcw0KbXVzdCBiZSBwcmV2ZW50ZWQuIFdoaWxlIGRyaXZlcnMgY2FuIHNvbWV0aW1lcyBhcHBy
b3hpbWF0ZSB0aGlzIHdpdGgNCmV4cG9ydGVyLXNwZWNpZmljIGZlbmNpbmcgYW5kIHBvbGljeSwg
dGhlcmUgaXMgbm8gY29yZSBkbWEtYnVmIHN0YXRlIHRyYW5zaXRpb24NCnRoYXQgY29tbXVuaWNh
dGVzIOKAnHRoaXMgYnVmZmVyIGlzIG5vIGxvbmdlciB2YWxpZDsgZmFpbCBhY2Nlc3PigJ0gYWNy
b3NzIGFsbA0KYWNjZXNzIHBhdGhzLg0KDQpUaGUgY2hhbmdlIGluIHRoaXMgc2VyaWVzIGlzIHRv
IGludHJvZHVjZSBhIGNvcmUg4oCccmV2b2tlZOKAnSBzdGF0ZSBvbiB0aGUgZG1hLWJ1Zg0Kb2Jq
ZWN0IGFuZCBhIGNvcnJlc3BvbmRpbmcgZXhwb3J0ZXItdHJpZ2dlcmVkIHJldm9rZSBvcGVyYXRp
b24uIE9uY2UgYSBkbWEtYnVmDQppcyByZXZva2VkLCBuZXcgYWNjZXNzIHBhdGhzIGFyZSBibG9j
a2VkIHNvIHRoYXQgYXR0ZW1wdHMgdG8gRE1BLW1hcCwgdm1hcCwgb3INCm1tYXAgdGhlIGJ1ZmZl
ciBmYWlsIGluIGEgY29uc2lzdGVudCB3YXkuDQoNCkluIGFkZGl0aW9uLCB0aGUgc2VyaWVzIGFp
bXMgdG8gaW52YWxpZGF0ZSBleGlzdGluZyBhY2Nlc3MgYXMgbXVjaCBhcyB0aGUga2VybmVsDQph
bGxvd3M6IGRldmljZSBtYXBwaW5ncyBhcmUgdG9ybiBkb3duIHdoZXJlIHBvc3NpYmxlIHNvIGRl
dmljZXMgYW5kIElPTU1VcyBjYW5ub3QNCmNvbnRpbnVlIERNQS4NCg0KVGhlIHNlbWFudGljcyBh
cmUgaW50ZW50aW9uYWxseSBzaW1wbGU6IHJldm9rZSBpcyBhIG9uZS13YXksIHBlcm1hbmVudCB0
cmFuc2l0aW9uDQpmb3IgdGhlIGxpZmV0aW1lIG9mIHRoYXQgZG1hLWJ1ZiBpbnN0YW5jZS4NCg0K
PkZyb20gYSBjb21wYXRpYmlsaXR5IHBlcnNwZWN0aXZlLCB1c2VycyB0aGF0IG5ldmVyIGludm9r
ZSByZXZva2UgYXJlIHVuYWZmZWN0ZWQsDQphbmQgZXhwb3J0ZXJzIHRoYXQgYWRvcHQgaXQgZ2Fp
biBhIGNvcmUtc3VwcG9ydGVkIGVuZm9yY2VtZW50IG1lY2hhbmlzbSByYXRoZXINCnRoYW4gcmVs
eWluZyBvbiBhZCBob2MgZHJpdmVyIGJlaGF2aW9yLiBUaGUgaW50ZW50IGlzIHRvIGtlZXAgdGhl
IGludGVyZmFjZQ0KbWluaW1hbCBhbmQgYXZvaWQgaW1wb3NpbmcgcG9saWN5OyB0aGUgc2VyaWVz
IHByb3ZpZGVzIHRoZSBtZWNoYW5pc20gdG8gdGVybWluYXRlDQphY2Nlc3MsIHdpdGggcG9saWN5
IHJlbWFpbmluZyBpbiB0aGUgZXhwb3J0ZXIgYW5kIGhpZ2hlci1sZXZlbCBjb21wb25lbnRzLg0K
DQpCVFcsIHNlZSB0aGlzIG1lZ2F0aHJlYWQgWzFdIGZvciBhZGRpdGlvbmFsIGNvbnRleHQuICAN
Cklyb25pY2FsbHksIGl0IHdhcyBwb3N0ZWQgZXhhY3RseSBvbmUgeWVhciBhZ28uDQoNClsxXSBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTAxMDcxNDI3MTkuMTc5NjM2LTIteWlsdW4u
eHVAbGludXguaW50ZWwuY29tLw0KDQpUaGFua3MNCg0KQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJu
ZWwub3JnDQpDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxpbnV4LW1lZGlh
QHZnZXIua2VybmVsLm9yZw0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNj
OiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCkNjOiBrdm1Admdlci5rZXJuZWwub3Jn
DQpDYzogaW9tbXVAbGlzdHMubGludXguZGV2DQpUbzogSmFzb24gR3VudGhvcnBlIDxqZ2dAemll
cGUuY2E+DQpUbzogTGVvbiBSb21hbm92c2t5IDxsZW9uQGtlcm5lbC5vcmc+DQpUbzogU3VtaXQg
U2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NClRvOiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpUbzogQWxleCBXaWxsaWFtc29uIDxhbGV4QHNoYXpi
b3Qub3JnPg0KVG86IEtldmluIFRpYW4gPGtldmluLnRpYW5AaW50ZWwuY29tPg0KVG86IEpvZXJn
IFJvZWRlbCA8am9yb0A4Ynl0ZXMub3JnPg0KVG86IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5v
cmc+DQpUbzogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4NCg0KU2lnbmVkLW9m
Zi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCi0tLQ0KTGVvbiBSb21h
bm92c2t5ICg0KToNCiAgICAgIGRtYS1idWY6IEludHJvZHVjZSByZXZva2Ugc2VtYW50aWNzDQog
ICAgICB2ZmlvOiBVc2UgZG1hLWJ1ZiByZXZva2Ugc2VtYW50aWNzDQogICAgICBpb21tdWZkOiBS
ZXF1aXJlIERNQUJVRiByZXZva2Ugc2VtYW50aWNzDQogICAgICBpb21tdWZkL3NlbGZ0ZXN0OiBS
ZXVzZSBkbWEtYnVmIHJldm9rZSBzZW1hbnRpY3MNCg0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgICAgICAgICAgfCAzNiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0NCiBk
cml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYyAgICAgIHwgIDIgKy0NCiBkcml2ZXJzL2lvbW11
L2lvbW11ZmQvc2VsZnRlc3QuYyAgIHwgMTIgKysrKy0tLS0tLS0tDQogZHJpdmVycy92ZmlvL3Bj
aS92ZmlvX3BjaV9kbWFidWYuYyB8IDI3ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIGlu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgICAgICAgICAgfCAzMSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrDQogNSBmaWxlcyBjaGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspLCAzNCBkZWxl
dGlvbnMoLSkNCi0tLQ0KYmFzZS1jb21taXQ6IDlhY2U0NzUzYTUyMDJiMDIxOTFkNTRlOWZkZjdm
OWUzZDAyYjg1ZWINCmNoYW5nZS1pZDogMjAyNTEyMjEtZG1hYnVmLXJldm9rZS1iOTBlZjE2ZTQy
MzYNCg0KQmVzdCByZWdhcmRzLA0KLS0gIA0KTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlh
LmNvbT4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
