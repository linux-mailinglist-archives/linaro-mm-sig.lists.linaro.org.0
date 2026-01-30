Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIf6OUW0fGm7OQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:38:13 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CA8BB2D2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:38:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD5333F820
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 13:38:12 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 71035401CE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 13:37:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=U2jGMbj2;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 313E96012A;
	Fri, 30 Jan 2026 13:37:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37D36C19421;
	Fri, 30 Jan 2026 13:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769780261;
	bh=IK+Fi5z28OyxSW5A5MVG412OaOginCpeb45wYEXqT9M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U2jGMbj2VZVmgssx6/eUKJn/fDmtkhfVHMXeo3S0MRuWmcbCDnsV3pTOJZGWnYIoi
	 +EV8WKti3R+eU4o+0l+SQduU7eTOjN6i/2eJ/0D/RszzAQTkFQDOIWWquOd57IlO19
	 Ptroe3qhhl/LqTtUG6+sHyv+5HUCjm0rW/ylIdgv/GuZhmd617CvIw5Wuqm5tRMqwd
	 OgscJ+aq+zw571sWF8DdELNqiuvQ/MT9SQxiQx5azNKk8lhLMPu/XvjIybn9ktZnpY
	 QO0dSTwpQRyabSo/eLHCT71Rv4cjvmemcLMqn1MTW/92mGXVD1eaxRu0Y4Y7tJ73zM
	 znSKBqs4wXBaA==
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
Date: Fri, 30 Jan 2026 15:37:19 +0200
Message-ID: <20260130-dmabuf-revoke-v6-3-06278f9b7bf0@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260130-dmabuf-revoke-v6-0-06278f9b7bf0@nvidia.com>
References: <20260130-dmabuf-revoke-v6-0-06278f9b7bf0@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-47773
X-Spamd-Bar: ----
Message-ID-Hash: FZHNFUZY25ZTVRLQINFRJYFFMSS6IAAU
X-Message-ID-Hash: FZHNFUZY25ZTVRLQINFRJYFFMSS6IAAU
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 3/8] dma-buf: Always build with DMABUF_MOVE_NOTIFY
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FZHNFUZY25ZTVRLQINFRJYFFMSS6IAAU/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: A2CA8BB2D2
X-Rspamd-Action: no action

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KRE1BQlVGX01PVkVf
Tk9USUZZIHdhcyBpbnRyb2R1Y2VkIGluIDIwMTggYW5kIGhhcyBiZWVuIG1hcmtlZCBhcw0KZXhw
ZXJpbWVudGFsIGFuZCBkaXNhYmxlZCBieSBkZWZhdWx0IGV2ZXIgc2luY2UuIFNpeCB5ZWFycyBs
YXRlciwNCmFsbCBuZXcgaW1wb3J0ZXJzIGltcGxlbWVudCB0aGlzIGNhbGxiYWNrLg0KDQpJdCBp
cyB0aGVyZWZvcmUgcmVhc29uYWJsZSB0byBkcm9wIENPTkZJR19ETUFCVUZfTU9WRV9OT1RJRlkg
YW5kDQphbHdheXMgYnVpbGQgRE1BQlVGIHdpdGggc3VwcG9ydCBmb3IgaXQgZW5hYmxlZC4NCg0K
U3VnZ2VzdGVkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCi0t
LQ0KIGRyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgfCAxMiAtLS0t
LS0tLS0tLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAgICAgIHwg
IDMgKy0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8IDEw
ICsrKy0tLS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9LY29uZmlnICAgICAgICAg
IHwgIDIgKy0NCiBkcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jICAgICAgIHwg
IDMgKy0tDQogZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYyAgICAgICAgICAgICB8IDEy
ICsrKystLS0tLS0tLQ0KIDYgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMzIgZGVs
ZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvS2NvbmZpZyBiL2RyaXZl
cnMvZG1hLWJ1Zi9LY29uZmlnDQppbmRleCBiNDZlYjhhNTUyZDcuLjg0ZDVlOWIyNGUyMCAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnDQorKysgYi9kcml2ZXJzL2RtYS1idWYv
S2NvbmZpZw0KQEAgLTQwLDE4ICs0MCw2IEBAIGNvbmZpZyBVRE1BQlVGDQogCSAgQSBkcml2ZXIg
dG8gbGV0IHVzZXJzcGFjZSB0dXJuIG1lbWZkIHJlZ2lvbnMgaW50byBkbWEtYnVmcy4NCiAJICBR
ZW11IGNhbiB1c2UgdGhpcyB0byBjcmVhdGUgaG9zdCBkbWFidWZzIGZvciBndWVzdCBmcmFtZWJ1
ZmZlcnMuDQogDQotY29uZmlnIERNQUJVRl9NT1ZFX05PVElGWQ0KLQlib29sICJNb3ZlIG5vdGlm
eSBiZXR3ZWVuIGRyaXZlcnMgKEVYUEVSSU1FTlRBTCkiDQotCWRlZmF1bHQgbg0KLQlkZXBlbmRz
IG9uIERNQV9TSEFSRURfQlVGRkVSDQotCWhlbHANCi0JICBEb24ndCBwaW4gYnVmZmVycyBpZiB0
aGUgZHluYW1pYyBETUEtYnVmIGludGVyZmFjZSBpcyBhdmFpbGFibGUgb24NCi0JICBib3RoIHRo
ZSBleHBvcnRlciBhcyB3ZWxsIGFzIHRoZSBpbXBvcnRlci4gVGhpcyBmaXhlcyBhIHNlY3VyaXR5
DQotCSAgcHJvYmxlbSB3aGVyZSB1c2Vyc3BhY2UgaXMgYWJsZSB0byBwaW4gdW5yZXN0cmljdGVk
IGFtb3VudHMgb2YgbWVtb3J5DQotCSAgdGhyb3VnaCBETUEtYnVmLg0KLQkgIFRoaXMgaXMgbWFy
a2VkIGV4cGVyaW1lbnRhbCBiZWNhdXNlIHdlIGRvbid0IHlldCBoYXZlIGEgY29uc2lzdGVudA0K
LQkgIGV4ZWN1dGlvbiBjb250ZXh0IGFuZCBtZW1vcnkgbWFuYWdlbWVudCBiZXR3ZWVuIGRyaXZl
cnMuDQotDQogY29uZmlnIERNQUJVRl9ERUJVRw0KIAlib29sICJETUEtQlVGIGRlYnVnIGNoZWNr
cyINCiAJZGVwZW5kcyBvbiBETUFfU0hBUkVEX0JVRkZFUg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCBlMTJk
YjU0MGM0MTMuLmNkNjhjMWMwYmZkNyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCkBAIC04NDcsOCArODQ3LDcg
QEAgc3RhdGljIGJvb2wNCiBkbWFfYnVmX3Bpbl9vbl9tYXAoc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYXR0YWNoKQ0KIHsNCiAJcmV0dXJuIGF0dGFjaC0+ZG1hYnVmLT5vcHMtPnBpbiAmJg0K
LQkJKCFkbWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpIHx8DQotCQkgIUlTX0VO
QUJMRUQoQ09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkpOw0KKwkgICAgICAgIWRtYV9idWZfYXR0
YWNobWVudF9pc19keW5hbWljKGF0dGFjaCk7DQogfQ0KIA0KIC8qKg0KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQppbmRleCBjZDQ5NDRjZWIwNDcuLmI3Zjg1
Yjg2NTNjZiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
bWFfYnVmLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVm
LmMNCkBAIC0xMzMsMTMgKzEzMyw5IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2RtYV9idWZfcGluKHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCiAJICogbm90aWZpZXJzIGFyZSBkaXNh
YmxlZCwgb25seSBhbGxvdyBwaW5uaW5nIGluIFZSQU0gd2hlbiBtb3ZlDQogCSAqIG5vdGllcnMg
YXJlIGVuYWJsZWQuDQogCSAqLw0KLQlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9NT1ZF
X05PVElGWSkpIHsNCi0JCWRvbWFpbnMgJj0gfkFNREdQVV9HRU1fRE9NQUlOX1ZSQU07DQotCX0g
ZWxzZSB7DQotCQlsaXN0X2Zvcl9lYWNoX2VudHJ5KGF0dGFjaCwgJmRtYWJ1Zi0+YXR0YWNobWVu
dHMsIG5vZGUpDQotCQkJaWYgKCFhdHRhY2gtPnBlZXIycGVlcikNCi0JCQkJZG9tYWlucyAmPSB+
QU1ER1BVX0dFTV9ET01BSU5fVlJBTTsNCi0JfQ0KKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGF0dGFj
aCwgJmRtYWJ1Zi0+YXR0YWNobWVudHMsIG5vZGUpDQorCQlpZiAoIWF0dGFjaC0+cGVlcjJwZWVy
KQ0KKwkJCWRvbWFpbnMgJj0gfkFNREdQVV9HRU1fRE9NQUlOX1ZSQU07DQogDQogCWlmIChkb21h
aW5zICYgQU1ER1BVX0dFTV9ET01BSU5fVlJBTSkNCiAJCWJvLT5mbGFncyB8PSBBTURHUFVfR0VN
X0NSRUFURV9DUFVfQUNDRVNTX1JFUVVJUkVEOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1ka2ZkL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9LY29uZmln
DQppbmRleCAxNmUxMmM5OTEzZjkuLmE1ZDc0NjdjMmYzNCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1ka2ZkL0tjb25maWcNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
a2ZkL0tjb25maWcNCkBAIC0yNyw3ICsyNyw3IEBAIGNvbmZpZyBIU0FfQU1EX1NWTQ0KIA0KIGNv
bmZpZyBIU0FfQU1EX1AyUA0KIAlib29sICJIU0Ega2VybmVsIGRyaXZlciBzdXBwb3J0IGZvciBw
ZWVyLXRvLXBlZXIgZm9yIEFNRCBHUFUgZGV2aWNlcyINCi0JZGVwZW5kcyBvbiBIU0FfQU1EICYm
IFBDSV9QMlBETUEgJiYgRE1BQlVGX01PVkVfTk9USUZZDQorCWRlcGVuZHMgb24gSFNBX0FNRCAm
JiBQQ0lfUDJQRE1BDQogCWhlbHANCiAJICBFbmFibGUgcGVlci10by1wZWVyIChQMlApIGNvbW11
bmljYXRpb24gYmV0d2VlbiBBTUQgR1BVcyBvdmVyDQogCSAgdGhlIFBDSWUgYnVzLiBUaGlzIGNh
biBpbXByb3ZlIHBlcmZvcm1hbmNlIG9mIG11bHRpLUdQVSBjb21wdXRlDQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1L2RybS94
ZS90ZXN0cy94ZV9kbWFfYnVmLmMNCmluZGV4IDFmMmNjYTVjMmY4MS4uYzEwNzY4N2VmM2MwIDEw
MDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYuYw0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYuYw0KQEAgLTIyLDggKzIyLDcgQEAg
c3RhdGljIGJvb2wgcDJwX2VuYWJsZWQoc3RydWN0IGRtYV9idWZfdGVzdF9wYXJhbXMgKnBhcmFt
cykNCiANCiBzdGF0aWMgYm9vbCBpc19keW5hbWljKHN0cnVjdCBkbWFfYnVmX3Rlc3RfcGFyYW1z
ICpwYXJhbXMpDQogew0KLQlyZXR1cm4gSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX01PVkVfTk9U
SUZZKSAmJiBwYXJhbXMtPmF0dGFjaF9vcHMgJiYNCi0JCXBhcmFtcy0+YXR0YWNoX29wcy0+aW52
YWxpZGF0ZV9tYXBwaW5nczsNCisJcmV0dXJuIHBhcmFtcy0+YXR0YWNoX29wcyAmJiBwYXJhbXMt
PmF0dGFjaF9vcHMtPmludmFsaWRhdGVfbWFwcGluZ3M7DQogfQ0KIA0KIHN0YXRpYyB2b2lkIGNo
ZWNrX3Jlc2lkZW5jeShzdHJ1Y3Qga3VuaXQgKnRlc3QsIHN0cnVjdCB4ZV9ibyAqZXhwb3J0ZWQs
DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYyBiL2RyaXZlcnMv
Z3B1L2RybS94ZS94ZV9kbWFfYnVmLmMNCmluZGV4IDFiOWNkMDQzZTUxNy4uZWEzNzBjZDM3M2U5
IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYw0KKysrIGIvZHJp
dmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYw0KQEAgLTU2LDE0ICs1NiwxMCBAQCBzdGF0aWMg
aW50IHhlX2RtYV9idWZfcGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCiAJ
Ym9vbCBhbGxvd192cmFtID0gdHJ1ZTsNCiAJaW50IHJldDsNCiANCi0JaWYgKCFJU19FTkFCTEVE
KENPTkZJR19ETUFCVUZfTU9WRV9OT1RJRlkpKSB7DQotCQlhbGxvd192cmFtID0gZmFsc2U7DQot
CX0gZWxzZSB7DQotCQlsaXN0X2Zvcl9lYWNoX2VudHJ5KGF0dGFjaCwgJmRtYWJ1Zi0+YXR0YWNo
bWVudHMsIG5vZGUpIHsNCi0JCQlpZiAoIWF0dGFjaC0+cGVlcjJwZWVyKSB7DQotCQkJCWFsbG93
X3ZyYW0gPSBmYWxzZTsNCi0JCQkJYnJlYWs7DQotCQkJfQ0KKwlsaXN0X2Zvcl9lYWNoX2VudHJ5
KGF0dGFjaCwgJmRtYWJ1Zi0+YXR0YWNobWVudHMsIG5vZGUpIHsNCisJCWlmICghYXR0YWNoLT5w
ZWVyMnBlZXIpIHsNCisJCQlhbGxvd192cmFtID0gZmFsc2U7DQorCQkJYnJlYWs7DQogCQl9DQog
CX0NCiANCg0KLS0gDQoyLjUyLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
