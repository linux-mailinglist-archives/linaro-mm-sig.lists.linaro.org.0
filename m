Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDaDNzGnb2lDEgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 17:02:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 738E247011
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 17:02:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD6D24015F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 14:07:42 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id A8C1240171
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 14:07:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=QRlTBMJh;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EFDF144058;
	Tue, 20 Jan 2026 14:07:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A9D2C16AAE;
	Tue, 20 Jan 2026 14:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768918041;
	bh=1hYHYQMvghzNsWmwvxu8DztgpWMwQVcDwD8L4qNzSFs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QRlTBMJhHmgjJfRLZFugcge3ItgdIDWL7IepDxcq9jS7Pmnp9SZe/HWs+cDKDZB+i
	 nUuCzOMeJsQabH0oG1eBHIfmwy8tJG8zd24hjV2hNiliRYS6FxL7SYQPI7x1u1pNr5
	 8b6JRNtS+TuokQxelcA/64PVpwWACS1LR1/bVtpwCRop0qeh1af5mf3HH/L5MrOkuU
	 bFvU+NmThWYFuWapDRNns9vD/Y9C7Je8c45M3BkGXWJDMuFNJOlIIEupIvm2wVMJL9
	 b8KmKjJBBFnQTnREVzTzXg4iSZjjRf/LJq3Mbcvh2ZOG6w0gdKBicov3TKvpb497a+
	 oevri4eLFs6HQ==
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
Date: Tue, 20 Jan 2026 16:07:02 +0200
Message-ID: <20260120-dmabuf-revoke-v3-2-b7e0b07b8214@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-a6db3
X-Spamd-Bar: ----
Message-ID-Hash: FGV4VZ4EBYU3O2NTKEO5L3RKJ7P67WLR
X-Message-ID-Hash: FGV4VZ4EBYU3O2NTKEO5L3RKJ7P67WLR
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 2/7] dma-buf: Always build with DMABUF_MOVE_NOTIFY
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FGV4VZ4EBYU3O2NTKEO5L3RKJ7P67WLR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,nvidia.com:email,nvidia.com:mid,amd.com:email]
X-Rspamd-Queue-Id: 738E247011
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KRE1BQlVGX01PVkVf
Tk9USUZZIHdhcyBpbnRyb2R1Y2VkIGluIDIwMTggYW5kIGhhcyBiZWVuIG1hcmtlZCBhcw0KZXhw
ZXJpbWVudGFsIGFuZCBkaXNhYmxlZCBieSBkZWZhdWx0IGV2ZXIgc2luY2UuIFNpeCB5ZWFycyBs
YXRlciwNCmFsbCBuZXcgaW1wb3J0ZXJzIGltcGxlbWVudCB0aGlzIGNhbGxiYWNrLg0KDQpJdCBp
cyB0aGVyZWZvcmUgcmVhc29uYWJsZSB0byBkcm9wIENPTkZJR19ETUFCVUZfTU9WRV9OT1RJRlkg
YW5kDQphbHdheXMgYnVpbGQgRE1BQlVGIHdpdGggc3VwcG9ydCBmb3IgaXQgZW5hYmxlZC4NCg0K
U3VnZ2VzdGVkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQpTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KLS0t
DQogZHJpdmVycy9kbWEtYnVmL0tjb25maWcgICAgICAgICAgICAgICAgICAgICB8IDEyIC0tLS0t
LS0tLS0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAgfCAx
MiArKy0tLS0tLS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1
Zi5jIHwgMTAgKysrLS0tLS0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL0tjb25maWcg
ICAgICAgICAgfCAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmMg
ICAgICAgfCAgMyArLS0NCiBkcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jICAgICAgICAg
ICAgIHwgMTIgKysrKy0tLS0tLS0tDQogNiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCsp
LCA0MCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmln
IGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCmluZGV4IGI0NmViOGE1NTJkNy4uODRkNWU5YjI0
ZTIwIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCisrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9LY29uZmlnDQpAQCAtNDAsMTggKzQwLDYgQEAgY29uZmlnIFVETUFCVUYNCiAJICBB
IGRyaXZlciB0byBsZXQgdXNlcnNwYWNlIHR1cm4gbWVtZmQgcmVnaW9ucyBpbnRvIGRtYS1idWZz
Lg0KIAkgIFFlbXUgY2FuIHVzZSB0aGlzIHRvIGNyZWF0ZSBob3N0IGRtYWJ1ZnMgZm9yIGd1ZXN0
IGZyYW1lYnVmZmVycy4NCiANCi1jb25maWcgRE1BQlVGX01PVkVfTk9USUZZDQotCWJvb2wgIk1v
dmUgbm90aWZ5IGJldHdlZW4gZHJpdmVycyAoRVhQRVJJTUVOVEFMKSINCi0JZGVmYXVsdCBuDQot
CWRlcGVuZHMgb24gRE1BX1NIQVJFRF9CVUZGRVINCi0JaGVscA0KLQkgIERvbid0IHBpbiBidWZm
ZXJzIGlmIHRoZSBkeW5hbWljIERNQS1idWYgaW50ZXJmYWNlIGlzIGF2YWlsYWJsZSBvbg0KLQkg
IGJvdGggdGhlIGV4cG9ydGVyIGFzIHdlbGwgYXMgdGhlIGltcG9ydGVyLiBUaGlzIGZpeGVzIGEg
c2VjdXJpdHkNCi0JICBwcm9ibGVtIHdoZXJlIHVzZXJzcGFjZSBpcyBhYmxlIHRvIHBpbiB1bnJl
c3RyaWN0ZWQgYW1vdW50cyBvZiBtZW1vcnkNCi0JICB0aHJvdWdoIERNQS1idWYuDQotCSAgVGhp
cyBpcyBtYXJrZWQgZXhwZXJpbWVudGFsIGJlY2F1c2Ugd2UgZG9uJ3QgeWV0IGhhdmUgYSBjb25z
aXN0ZW50DQotCSAgZXhlY3V0aW9uIGNvbnRleHQgYW5kIG1lbW9yeSBtYW5hZ2VtZW50IGJldHdl
ZW4gZHJpdmVycy4NCi0NCiBjb25maWcgRE1BQlVGX0RFQlVHDQogCWJvb2wgIkRNQS1CVUYgZGVi
dWcgY2hlY2tzIg0KIAlkZXBlbmRzIG9uIERNQV9TSEFSRURfQlVGRkVSDQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmlu
ZGV4IDU5Y2M2NDdiZjQwZS4uY2QzYjYwY2U0ODYzIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTgzNywx
OCArODM3LDEwIEBAIHN0YXRpYyB2b2lkIG1hbmdsZV9zZ190YWJsZShzdHJ1Y3Qgc2dfdGFibGUg
KnNnX3RhYmxlKQ0KIA0KIH0NCiANCi1zdGF0aWMgaW5saW5lIGJvb2wNCi1kbWFfYnVmX2F0dGFj
aG1lbnRfaXNfZHluYW1pYyhzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQotew0K
LQlyZXR1cm4gISFhdHRhY2gtPmltcG9ydGVyX29wczsNCi19DQotDQogc3RhdGljIGJvb2wNCiBk
bWFfYnVmX3Bpbl9vbl9tYXAoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQ0KIHsN
Ci0JcmV0dXJuIGF0dGFjaC0+ZG1hYnVmLT5vcHMtPnBpbiAmJg0KLQkJKCFkbWFfYnVmX2F0dGFj
aG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpIHx8DQotCQkgIUlTX0VOQUJMRUQoQ09ORklHX0RNQUJV
Rl9NT1ZFX05PVElGWSkpOw0KKwlyZXR1cm4gYXR0YWNoLT5kbWFidWYtPm9wcy0+cGluICYmICFh
dHRhY2gtPmltcG9ydGVyX29wczsNCiB9DQogDQogLyoqDQpAQCAtMTEyNCw3ICsxMTE2LDcgQEAg
c3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0dGFjaCwNCiAJLyoNCiAJICogSW1wb3J0ZXJzIHdpdGggc3RhdGljIGF0dGFj
aG1lbnRzIGRvbid0IHdhaXQgZm9yIGZlbmNlcy4NCiAJICovDQotCWlmICghZG1hX2J1Zl9hdHRh
Y2htZW50X2lzX2R5bmFtaWMoYXR0YWNoKSkgew0KKwlpZiAoIWF0dGFjaC0+aW1wb3J0ZXJfb3Bz
KSB7DQogCQlyZXQgPSBkbWFfcmVzdl93YWl0X3RpbWVvdXQoYXR0YWNoLT5kbWFidWYtPnJlc3Ys
DQogCQkJCQkgICAgRE1BX1JFU1ZfVVNBR0VfS0VSTkVMLCB0cnVlLA0KIAkJCQkJICAgIE1BWF9T
Q0hFRFVMRV9USU1FT1VUKTsNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rt
YV9idWYuYw0KaW5kZXggODYzNDU0MTQ4YjI4Li4zNDkyMTU1NDllOGYgMTAwNjQ0DQotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQpAQCAtMTQ1LDEzICsxNDUsOSBA
QCBzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX3BpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50
ICphdHRhY2gpDQogCSAqIG5vdGlmaWVycyBhcmUgZGlzYWJsZWQsIG9ubHkgYWxsb3cgcGlubmlu
ZyBpbiBWUkFNIHdoZW4gbW92ZQ0KIAkgKiBub3RpZXJzIGFyZSBlbmFibGVkLg0KIAkgKi8NCi0J
aWYgKCFJU19FTkFCTEVEKENPTkZJR19ETUFCVUZfTU9WRV9OT1RJRlkpKSB7DQotCQlkb21haW5z
ICY9IH5BTURHUFVfR0VNX0RPTUFJTl9WUkFNOw0KLQl9IGVsc2Ugew0KLQkJbGlzdF9mb3JfZWFj
aF9lbnRyeShhdHRhY2gsICZkbWFidWYtPmF0dGFjaG1lbnRzLCBub2RlKQ0KLQkJCWlmICghYXR0
YWNoLT5wZWVyMnBlZXIpDQotCQkJCWRvbWFpbnMgJj0gfkFNREdQVV9HRU1fRE9NQUlOX1ZSQU07
DQotCX0NCisJbGlzdF9mb3JfZWFjaF9lbnRyeShhdHRhY2gsICZkbWFidWYtPmF0dGFjaG1lbnRz
LCBub2RlKQ0KKwkJaWYgKCFhdHRhY2gtPnBlZXIycGVlcikNCisJCQlkb21haW5zICY9IH5BTURH
UFVfR0VNX0RPTUFJTl9WUkFNOw0KIA0KIAlpZiAoZG9tYWlucyAmIEFNREdQVV9HRU1fRE9NQUlO
X1ZSQU0pDQogCQliby0+ZmxhZ3MgfD0gQU1ER1BVX0dFTV9DUkVBVEVfQ1BVX0FDQ0VTU19SRVFV
SVJFRDsNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9LY29uZmlnIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQvS2NvbmZpZw0KaW5kZXggMTZlMTJjOTkxM2Y5Li5h
NWQ3NDY3YzJmMzQgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9LY29u
ZmlnDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9LY29uZmlnDQpAQCAtMjcsNyAr
MjcsNyBAQCBjb25maWcgSFNBX0FNRF9TVk0NCiANCiBjb25maWcgSFNBX0FNRF9QMlANCiAJYm9v
bCAiSFNBIGtlcm5lbCBkcml2ZXIgc3VwcG9ydCBmb3IgcGVlci10by1wZWVyIGZvciBBTUQgR1BV
IGRldmljZXMiDQotCWRlcGVuZHMgb24gSFNBX0FNRCAmJiBQQ0lfUDJQRE1BICYmIERNQUJVRl9N
T1ZFX05PVElGWQ0KKwlkZXBlbmRzIG9uIEhTQV9BTUQgJiYgUENJX1AyUERNQQ0KIAloZWxwDQog
CSAgRW5hYmxlIHBlZXItdG8tcGVlciAoUDJQKSBjb21tdW5pY2F0aW9uIGJldHdlZW4gQU1EIEdQ
VXMgb3Zlcg0KIAkgIHRoZSBQQ0llIGJ1cy4gVGhpcyBjYW4gaW1wcm92ZSBwZXJmb3JtYW5jZSBv
ZiBtdWx0aS1HUFUgY29tcHV0ZQ0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS90ZXN0
cy94ZV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jDQpp
bmRleCAxZjJjY2E1YzJmODEuLmMxMDc2ODdlZjNjMCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1
L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS90ZXN0
cy94ZV9kbWFfYnVmLmMNCkBAIC0yMiw4ICsyMiw3IEBAIHN0YXRpYyBib29sIHAycF9lbmFibGVk
KHN0cnVjdCBkbWFfYnVmX3Rlc3RfcGFyYW1zICpwYXJhbXMpDQogDQogc3RhdGljIGJvb2wgaXNf
ZHluYW1pYyhzdHJ1Y3QgZG1hX2J1Zl90ZXN0X3BhcmFtcyAqcGFyYW1zKQ0KIHsNCi0JcmV0dXJu
IElTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkgJiYgcGFyYW1zLT5hdHRhY2hf
b3BzICYmDQotCQlwYXJhbXMtPmF0dGFjaF9vcHMtPmludmFsaWRhdGVfbWFwcGluZ3M7DQorCXJl
dHVybiBwYXJhbXMtPmF0dGFjaF9vcHMgJiYgcGFyYW1zLT5hdHRhY2hfb3BzLT5pbnZhbGlkYXRl
X21hcHBpbmdzOw0KIH0NCiANCiBzdGF0aWMgdm9pZCBjaGVja19yZXNpZGVuY3koc3RydWN0IGt1
bml0ICp0ZXN0LCBzdHJ1Y3QgeGVfYm8gKmV4cG9ydGVkLA0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS94ZS94ZV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5j
DQppbmRleCAxYjljZDA0M2U1MTcuLmVhMzcwY2QzNzNlOSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS94ZS94ZV9kbWFfYnVmLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9kbWFf
YnVmLmMNCkBAIC01NiwxNCArNTYsMTAgQEAgc3RhdGljIGludCB4ZV9kbWFfYnVmX3BpbihzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQogCWJvb2wgYWxsb3dfdnJhbSA9IHRydWU7
DQogCWludCByZXQ7DQogDQotCWlmICghSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX01PVkVfTk9U
SUZZKSkgew0KLQkJYWxsb3dfdnJhbSA9IGZhbHNlOw0KLQl9IGVsc2Ugew0KLQkJbGlzdF9mb3Jf
ZWFjaF9lbnRyeShhdHRhY2gsICZkbWFidWYtPmF0dGFjaG1lbnRzLCBub2RlKSB7DQotCQkJaWYg
KCFhdHRhY2gtPnBlZXIycGVlcikgew0KLQkJCQlhbGxvd192cmFtID0gZmFsc2U7DQotCQkJCWJy
ZWFrOw0KLQkJCX0NCisJbGlzdF9mb3JfZWFjaF9lbnRyeShhdHRhY2gsICZkbWFidWYtPmF0dGFj
aG1lbnRzLCBub2RlKSB7DQorCQlpZiAoIWF0dGFjaC0+cGVlcjJwZWVyKSB7DQorCQkJYWxsb3df
dnJhbSA9IGZhbHNlOw0KKwkJCWJyZWFrOw0KIAkJfQ0KIAl9DQogDQoNCi0tIA0KMi41Mi4wDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
