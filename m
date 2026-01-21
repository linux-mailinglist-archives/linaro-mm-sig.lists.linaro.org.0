Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EACAC/7NcGkOaAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:00:46 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EDE57432
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:00:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B2EE40150
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 13:00:44 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 28B1F401BE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 12:59:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=emyyQJnk;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CE848600AA;
	Wed, 21 Jan 2026 12:59:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC24EC19424;
	Wed, 21 Jan 2026 12:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769000386;
	bh=d1hns7ecqedYSGdp3dVh7hrh3lxHsTLnWUd2PLo1qM4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=emyyQJnkfNQ4Iwa2yve4soUs5i8e75BYDU+9czokUdgQocd78LcCkmzGh0hC1VmaY
	 EjhJCxVuMqImcMWBGOqygLLvujoID0mcgHon4IjWViWIurQuAUSdcXN+EhJJsRPu9R
	 gJuM0VBxy64kjYP6RxYKPdixXTw+T1/fXb+hF5PtZ4J7VoM1gUvWG4Fz3EuU3cv1Bj
	 WwksBPm0LCCU+eL+/kbwf4ugTZvRGWw3Pa5GUYRl32HJUrTRyly53nlB5DwY1ykPuM
	 Scenmm+ftdQCDOUjZsCj0HZUYX181oA+Uu/u6+EnVv7ncDYYlDy3oyxsoGkE0M+laI
	 bn703toKud0Zw==
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
Date: Wed, 21 Jan 2026 14:59:11 +0200
Message-ID: <20260121-dmabuf-revoke-v4-3-d311cbc8633d@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
References: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-a6db3
X-Spamd-Bar: ----
Message-ID-Hash: UI24LKALHGKTJDN26W5DSY72BPS7ONDT
X-Message-ID-Hash: UI24LKALHGKTJDN26W5DSY72BPS7ONDT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 3/8] dma-buf: Always build with DMABUF_MOVE_NOTIFY
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UI24LKALHGKTJDN26W5DSY72BPS7ONDT/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,amd.com:email]
X-Rspamd-Queue-Id: 76EDE57432
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
LS0tLS0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAgfCAg
MyArLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgMTAg
KysrLS0tLS0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL0tjb25maWcgICAgICAgICAg
fCAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmMgICAgICAgfCAg
MyArLS0NCiBkcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jICAgICAgICAgICAgIHwgMTIg
KysrKy0tLS0tLS0tDQogNiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzMiBkZWxl
dGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnIGIvZHJpdmVy
cy9kbWEtYnVmL0tjb25maWcNCmluZGV4IGI0NmViOGE1NTJkNy4uODRkNWU5YjI0ZTIwIDEwMDY0
NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9L
Y29uZmlnDQpAQCAtNDAsMTggKzQwLDYgQEAgY29uZmlnIFVETUFCVUYNCiAJICBBIGRyaXZlciB0
byBsZXQgdXNlcnNwYWNlIHR1cm4gbWVtZmQgcmVnaW9ucyBpbnRvIGRtYS1idWZzLg0KIAkgIFFl
bXUgY2FuIHVzZSB0aGlzIHRvIGNyZWF0ZSBob3N0IGRtYWJ1ZnMgZm9yIGd1ZXN0IGZyYW1lYnVm
ZmVycy4NCiANCi1jb25maWcgRE1BQlVGX01PVkVfTk9USUZZDQotCWJvb2wgIk1vdmUgbm90aWZ5
IGJldHdlZW4gZHJpdmVycyAoRVhQRVJJTUVOVEFMKSINCi0JZGVmYXVsdCBuDQotCWRlcGVuZHMg
b24gRE1BX1NIQVJFRF9CVUZGRVINCi0JaGVscA0KLQkgIERvbid0IHBpbiBidWZmZXJzIGlmIHRo
ZSBkeW5hbWljIERNQS1idWYgaW50ZXJmYWNlIGlzIGF2YWlsYWJsZSBvbg0KLQkgIGJvdGggdGhl
IGV4cG9ydGVyIGFzIHdlbGwgYXMgdGhlIGltcG9ydGVyLiBUaGlzIGZpeGVzIGEgc2VjdXJpdHkN
Ci0JICBwcm9ibGVtIHdoZXJlIHVzZXJzcGFjZSBpcyBhYmxlIHRvIHBpbiB1bnJlc3RyaWN0ZWQg
YW1vdW50cyBvZiBtZW1vcnkNCi0JICB0aHJvdWdoIERNQS1idWYuDQotCSAgVGhpcyBpcyBtYXJr
ZWQgZXhwZXJpbWVudGFsIGJlY2F1c2Ugd2UgZG9uJ3QgeWV0IGhhdmUgYSBjb25zaXN0ZW50DQot
CSAgZXhlY3V0aW9uIGNvbnRleHQgYW5kIG1lbW9yeSBtYW5hZ2VtZW50IGJldHdlZW4gZHJpdmVy
cy4NCi0NCiBjb25maWcgRE1BQlVGX0RFQlVHDQogCWJvb2wgIkRNQS1CVUYgZGVidWcgY2hlY2tz
Ig0KIAlkZXBlbmRzIG9uIERNQV9TSEFSRURfQlVGRkVSDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IGUxMmRi
NTQwYzQxMy4uY2Q2OGMxYzBiZmQ3IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTg0Nyw4ICs4NDcsNyBA
QCBzdGF0aWMgYm9vbA0KIGRtYV9idWZfcGluX29uX21hcChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2gpDQogew0KIAlyZXR1cm4gYXR0YWNoLT5kbWFidWYtPm9wcy0+cGluICYmDQot
CQkoIWRtYV9idWZfYXR0YWNobWVudF9pc19keW5hbWljKGF0dGFjaCkgfHwNCi0JCSAhSVNfRU5B
QkxFRChDT05GSUdfRE1BQlVGX01PVkVfTk9USUZZKSk7DQorCSAgICAgICAhZG1hX2J1Zl9hdHRh
Y2htZW50X2lzX2R5bmFtaWMoYXR0YWNoKTsNCiB9DQogDQogLyoqDQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCmluZGV4IDg2MzQ1NDE0OGIyOC4uMzQ5MjE1
NTQ5ZThmIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rt
YV9idWYuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYu
Yw0KQEAgLTE0NSwxMyArMTQ1LDkgQEAgc3RhdGljIGludCBhbWRncHVfZG1hX2J1Zl9waW4oc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQ0KIAkgKiBub3RpZmllcnMgYXJlIGRpc2Fi
bGVkLCBvbmx5IGFsbG93IHBpbm5pbmcgaW4gVlJBTSB3aGVuIG1vdmUNCiAJICogbm90aWVycyBh
cmUgZW5hYmxlZC4NCiAJICovDQotCWlmICghSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX01PVkVf
Tk9USUZZKSkgew0KLQkJZG9tYWlucyAmPSB+QU1ER1BVX0dFTV9ET01BSU5fVlJBTTsNCi0JfSBl
bHNlIHsNCi0JCWxpc3RfZm9yX2VhY2hfZW50cnkoYXR0YWNoLCAmZG1hYnVmLT5hdHRhY2htZW50
cywgbm9kZSkNCi0JCQlpZiAoIWF0dGFjaC0+cGVlcjJwZWVyKQ0KLQkJCQlkb21haW5zICY9IH5B
TURHUFVfR0VNX0RPTUFJTl9WUkFNOw0KLQl9DQorCWxpc3RfZm9yX2VhY2hfZW50cnkoYXR0YWNo
LCAmZG1hYnVmLT5hdHRhY2htZW50cywgbm9kZSkNCisJCWlmICghYXR0YWNoLT5wZWVyMnBlZXIp
DQorCQkJZG9tYWlucyAmPSB+QU1ER1BVX0dFTV9ET01BSU5fVlJBTTsNCiANCiAJaWYgKGRvbWFp
bnMgJiBBTURHUFVfR0VNX0RPTUFJTl9WUkFNKQ0KIAkJYm8tPmZsYWdzIHw9IEFNREdQVV9HRU1f
Q1JFQVRFX0NQVV9BQ0NFU1NfUkVRVUlSRUQ7DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRrZmQvS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL0tjb25maWcN
CmluZGV4IDE2ZTEyYzk5MTNmOS4uYTVkNzQ2N2MyZjM0IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRrZmQvS2NvbmZpZw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRr
ZmQvS2NvbmZpZw0KQEAgLTI3LDcgKzI3LDcgQEAgY29uZmlnIEhTQV9BTURfU1ZNDQogDQogY29u
ZmlnIEhTQV9BTURfUDJQDQogCWJvb2wgIkhTQSBrZXJuZWwgZHJpdmVyIHN1cHBvcnQgZm9yIHBl
ZXItdG8tcGVlciBmb3IgQU1EIEdQVSBkZXZpY2VzIg0KLQlkZXBlbmRzIG9uIEhTQV9BTUQgJiYg
UENJX1AyUERNQSAmJiBETUFCVUZfTU9WRV9OT1RJRlkNCisJZGVwZW5kcyBvbiBIU0FfQU1EICYm
IFBDSV9QMlBETUENCiAJaGVscA0KIAkgIEVuYWJsZSBwZWVyLXRvLXBlZXIgKFAyUCkgY29tbXVu
aWNhdGlvbiBiZXR3ZWVuIEFNRCBHUFVzIG92ZXINCiAJICB0aGUgUENJZSBidXMuIFRoaXMgY2Fu
IGltcHJvdmUgcGVyZm9ybWFuY2Ugb2YgbXVsdGktR1BVIGNvbXB1dGUNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL3hl
L3Rlc3RzL3hlX2RtYV9idWYuYw0KaW5kZXggMWYyY2NhNWMyZjgxLi5jMTA3Njg3ZWYzYzAgMTAw
NjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jDQorKysgYi9k
cml2ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jDQpAQCAtMjIsOCArMjIsNyBAQCBz
dGF0aWMgYm9vbCBwMnBfZW5hYmxlZChzdHJ1Y3QgZG1hX2J1Zl90ZXN0X3BhcmFtcyAqcGFyYW1z
KQ0KIA0KIHN0YXRpYyBib29sIGlzX2R5bmFtaWMoc3RydWN0IGRtYV9idWZfdGVzdF9wYXJhbXMg
KnBhcmFtcykNCiB7DQotCXJldHVybiBJU19FTkFCTEVEKENPTkZJR19ETUFCVUZfTU9WRV9OT1RJ
RlkpICYmIHBhcmFtcy0+YXR0YWNoX29wcyAmJg0KLQkJcGFyYW1zLT5hdHRhY2hfb3BzLT5pbnZh
bGlkYXRlX21hcHBpbmdzOw0KKwlyZXR1cm4gcGFyYW1zLT5hdHRhY2hfb3BzICYmIHBhcmFtcy0+
YXR0YWNoX29wcy0+aW52YWxpZGF0ZV9tYXBwaW5nczsNCiB9DQogDQogc3RhdGljIHZvaWQgY2hl
Y2tfcmVzaWRlbmN5KHN0cnVjdCBrdW5pdCAqdGVzdCwgc3RydWN0IHhlX2JvICpleHBvcnRlZCwN
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jIGIvZHJpdmVycy9n
cHUvZHJtL3hlL3hlX2RtYV9idWYuYw0KaW5kZXggMWI5Y2QwNDNlNTE3Li5lYTM3MGNkMzczZTkg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jDQorKysgYi9kcml2
ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jDQpAQCAtNTYsMTQgKzU2LDEwIEBAIHN0YXRpYyBp
bnQgeGVfZG1hX2J1Zl9waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQ0KIAli
b29sIGFsbG93X3ZyYW0gPSB0cnVlOw0KIAlpbnQgcmV0Ow0KIA0KLQlpZiAoIUlTX0VOQUJMRUQo
Q09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkpIHsNCi0JCWFsbG93X3ZyYW0gPSBmYWxzZTsNCi0J
fSBlbHNlIHsNCi0JCWxpc3RfZm9yX2VhY2hfZW50cnkoYXR0YWNoLCAmZG1hYnVmLT5hdHRhY2ht
ZW50cywgbm9kZSkgew0KLQkJCWlmICghYXR0YWNoLT5wZWVyMnBlZXIpIHsNCi0JCQkJYWxsb3df
dnJhbSA9IGZhbHNlOw0KLQkJCQlicmVhazsNCi0JCQl9DQorCWxpc3RfZm9yX2VhY2hfZW50cnko
YXR0YWNoLCAmZG1hYnVmLT5hdHRhY2htZW50cywgbm9kZSkgew0KKwkJaWYgKCFhdHRhY2gtPnBl
ZXIycGVlcikgew0KKwkJCWFsbG93X3ZyYW0gPSBmYWxzZTsNCisJCQlicmVhazsNCiAJCX0NCiAJ
fQ0KIA0KDQotLSANCjIuNTIuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
