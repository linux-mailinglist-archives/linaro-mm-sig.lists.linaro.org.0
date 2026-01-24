Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJcVLpcadWl8AwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Jan 2026 20:16:39 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 505817EAD8
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Jan 2026 20:16:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68E5D3F7E7
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Jan 2026 19:16:38 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 49C2F401C1
	for <linaro-mm-sig@lists.linaro.org>; Sat, 24 Jan 2026 19:14:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=NyR45PPY;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B77B5442F5;
	Sat, 24 Jan 2026 19:14:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0891BC19423;
	Sat, 24 Jan 2026 19:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769282098;
	bh=KNlCsM/OFfLWAu/T5pur4zoMt38hIib7Mz2ySyGAmUU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NyR45PPYnyo/66y4f9hvK+8P7RLqMkeligncBIJPpO9ubyJvQe2U3AJgoLghiJ4kR
	 DssGh5npXdX/DJNIC+8dSnimOSxIlC8m/Hd6HR3vGdWT1woh0kx+c3g9ZBW7hr1rcf
	 VLRN20CeVIe1sQHd4MzqzMU35EGHJfugsjh2uEVXCh3P0Lljwu44jdjIDkUD39UJzP
	 7wCFASkNARy3nJSXkkpzrnZ/NPmAD3my5HTpzjiaPZ07mbKxrAYP2CtfqRks0dlNtJ
	 EYfxC3uONNwVjksG1JVxsA0TSohwC/LkKObkXT+lLg1rNZGRLrUMmyMSsXgj4o1OGj
	 wO74cM0Rmfb5Q==
From: Leon Romanovsky <leon@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Gerd Hoffmann <kraxel@redhat.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Gurchetan Singh <gurchetansingh@chromium.org>,
	Chia-I Wu <olvaffe@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	=?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Kevin Tian <kevin.tian@intel.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Felix Kuehling <Felix.Kuehling@amd.com>,
	Alex Williamson <alex@shazbot.org>,
	Ankit Agrawal <ankita@nvidia.com>,
	Vivek Kasireddy <vivek.kasireddy@intel.com>
Date: Sat, 24 Jan 2026 21:14:20 +0200
Message-ID: <20260124-dmabuf-revoke-v5-8-f98fca917e96@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-47773
X-Spamd-Bar: ----
Message-ID-Hash: HS6N62PHWBESWHYGDYDGJR4LVX52N2S5
X-Message-ID-Hash: HS6N62PHWBESWHYGDYDGJR4LVX52N2S5
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 8/8] iommufd: Add dma_buf_pin()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HS6N62PHWBESWHYGDYDGJR4LVX52N2S5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,linaro.org:email,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 505817EAD8
X-Rspamd-Action: no action

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KSU9NTVVGRCByZWxp
ZXMgb24gYSBwcml2YXRlIHByb3RvY29sIHdpdGggVkZJTywgYW5kIHRoaXMgYWx3YXlzIG9wZXJh
dGVkDQppbiBwaW5uZWQgbW9kZS4NCg0KTm93IHRoYXQgVkZJTyBjYW4gc3VwcG9ydCBwaW5uZWQg
aW1wb3J0ZXJzIHVwZGF0ZSBJT01NVUZEIHRvIGludm9rZSB0aGUNCm5vcm1hbCBkbWEtYnVmIGZs
b3cgdG8gcmVxdWVzdCBwaW4uDQoNClRoaXMgaXNuJ3QgZW5vdWdoIHRvIGFsbG93IElPTU1VRkQg
dG8gd29yayB3aXRoIG90aGVyIGV4cG9ydGVycywgaXQgc3RpbGwNCm5lZWRzIGEgd2F5IHRvIGdl
dCB0aGUgcGh5c2ljYWwgYWRkcmVzcyBsaXN0IHdoaWNoIGlzIGFub3RoZXIgc2VyaWVzLg0KDQpJ
T01NVUZEIHN1cHBvcnRzIHRoZSBkZWZpbmVkIHJldm9rZSBzZW1hbnRpY3MuIEl0IGltbWVkaWF0
ZWx5IHN0b3BzIGFuZA0KZmVuY2VzIGFjY2VzcyB0byB0aGUgbWVtb3J5IGluc2lkZSBpdCdzIGlu
dmFsaWRhdGVfbWFwcGluZ3MoKSBjYWxsYmFjaywNCmFuZCBpdCBjdXJyZW50bHkgZG9lc24ndCB1
c2Ugc2NhdHRlcmxpc3RzIHNvIGRvZXNuJ3QgY2FsbCBtYXAvdW5tYXAgYXQNCmFsbC4NCg0KSXQg
aXMgZXhwZWN0ZWQgdGhhdCBhIGZ1dHVyZSByZXZpc2lvbiBjYW4gc3luY2hyb25vdXNseSBjYWxs
IHVubWFwIGZyb20NCnRoZSBtb3ZlX25vdGlmeSBjYWxsYmFjayBhcyB3ZWxsLg0KDQpBY2tlZC1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9m
Zi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCi0tLQ0KIGRyaXZlcnMv
aW9tbXUvaW9tbXVmZC9wYWdlcy5jIHwgOSArKysrKysrKy0NCiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11
L2lvbW11ZmQvcGFnZXMuYyBiL2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jDQppbmRleCA3
NmY5MDBmYTE2ODcuLmE1ZWIyYmM0ZWY0OCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvaW9tbXUvaW9t
bXVmZC9wYWdlcy5jDQorKysgYi9kcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYw0KQEAgLTE1
MDEsMTYgKzE1MDEsMjIgQEAgc3RhdGljIGludCBpb3B0X21hcF9kbWFidWYoc3RydWN0IGlvbW11
ZmRfY3R4ICppY3R4LCBzdHJ1Y3QgaW9wdF9wYWdlcyAqcGFnZXMsDQogCQltdXRleF91bmxvY2so
JnBhZ2VzLT5tdXRleCk7DQogCX0NCiANCi0JcmMgPSBzeW1fdmZpb19wY2lfZG1hX2J1Zl9pb21t
dWZkX21hcChhdHRhY2gsICZwYWdlcy0+ZG1hYnVmLnBoeXMpOw0KKwlyYyA9IGRtYV9idWZfcGlu
KGF0dGFjaCk7DQogCWlmIChyYykNCiAJCWdvdG8gZXJyX2RldGFjaDsNCiANCisJcmMgPSBzeW1f
dmZpb19wY2lfZG1hX2J1Zl9pb21tdWZkX21hcChhdHRhY2gsICZwYWdlcy0+ZG1hYnVmLnBoeXMp
Ow0KKwlpZiAocmMpDQorCQlnb3RvIGVycl91bnBpbjsNCisNCiAJZG1hX3Jlc3ZfdW5sb2NrKGRt
YWJ1Zi0+cmVzdik7DQogDQogCS8qIE9uIHN1Y2Nlc3MgaW9wdF9yZWxlYXNlX3BhZ2VzKCkgd2ls
bCBkZXRhY2ggYW5kIHB1dCB0aGUgZG1hYnVmLiAqLw0KIAlwYWdlcy0+ZG1hYnVmLmF0dGFjaCA9
IGF0dGFjaDsNCiAJcmV0dXJuIDA7DQogDQorZXJyX3VucGluOg0KKwlkbWFfYnVmX3VucGluKGF0
dGFjaCk7DQogZXJyX2RldGFjaDoNCiAJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7DQog
CWRtYV9idWZfZGV0YWNoKGRtYWJ1ZiwgYXR0YWNoKTsNCkBAIC0xNjU2LDYgKzE2NjIsNyBAQCB2
b2lkIGlvcHRfcmVsZWFzZV9wYWdlcyhzdHJ1Y3Qga3JlZiAqa3JlZikNCiAJaWYgKGlvcHRfaXNf
ZG1hYnVmKHBhZ2VzKSAmJiBwYWdlcy0+ZG1hYnVmLmF0dGFjaCkgew0KIAkJc3RydWN0IGRtYV9i
dWYgKmRtYWJ1ZiA9IHBhZ2VzLT5kbWFidWYuYXR0YWNoLT5kbWFidWY7DQogDQorCQlkbWFfYnVm
X3VucGluKHBhZ2VzLT5kbWFidWYuYXR0YWNoKTsNCiAJCWRtYV9idWZfZGV0YWNoKGRtYWJ1Ziwg
cGFnZXMtPmRtYWJ1Zi5hdHRhY2gpOw0KIAkJZG1hX2J1Zl9wdXQoZG1hYnVmKTsNCiAJCVdBUk5f
T04oIWxpc3RfZW1wdHkoJnBhZ2VzLT5kbWFidWYudHJhY2tlcikpOw0KDQotLSANCjIuNTIuMA0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
