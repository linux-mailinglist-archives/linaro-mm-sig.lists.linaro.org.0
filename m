Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDDoBi4adWl8AwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Jan 2026 20:14:54 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 569737E9CA
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Jan 2026 20:14:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E23BC3F7E7
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Jan 2026 19:14:51 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 661E33F7E7
	for <linaro-mm-sig@lists.linaro.org>; Sat, 24 Jan 2026 19:14:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=X+xeQLyr;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 955BC42A2C;
	Sat, 24 Jan 2026 19:14:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCCF3C116D0;
	Sat, 24 Jan 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769282074;
	bh=NATdES5Oox4rtKNrsa+ZhkierotfR0B1Snwy5+c+Bbs=;
	h=From:To:Cc:Subject:Date:From;
	b=X+xeQLyrmiha8BnMyD/M7eCAnElWAXyx4WoXt4tfQS4vL+Lj18HptF4vdWkGC4rsF
	 l8VbI+pUbykRLgy+6HA7aEBf907qD9ZZ68jrJPOWicwTO+ZPQM7fh1ZBoWto4NeTPO
	 o4hShgOgl/vcRYumX0eSg2+G78kV/SGlmCWKgkqVnHTOl9emqQWFdABDA/b2N39qv0
	 Xiv1ayiZVo9ubVfOKCJjfRXnVDqvVzFz/s589xDn35UnaZbuVmhRZT8jXS+iF8zWsu
	 5djtR6/w1SSZRATrIsFH01/wqz8sQFLKMWlV+ljHqiEl9WbAG4nfs7qWXfJLeFekkc
	 w2VlG2FGlCcNA==
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
Date: Sat, 24 Jan 2026 21:14:12 +0200
Message-ID: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20251221-dmabuf-revoke-b90ef16e4236
X-Mailer: b4 0.15-dev-47773
X-Spamd-Bar: ----
Message-ID-Hash: XRNJMGI7U2DAZ5QEAGR5PPSCU3C4TGZQ
X-Message-ID-Hash: XRNJMGI7U2DAZ5QEAGR5PPSCU3C4TGZQ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 0/8] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XRNJMGI7U2DAZ5QEAGR5PPSCU3C4TGZQ/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 569737E9CA
X-Rspamd-Action: no action

Q2hhbmdlbG9nOg0KdjU6DQogKiBEb2N1bWVudGVkIHRoZSBETUEtQlVGIGV4cGVjdGF0aW9ucyBh
cm91bmQgRE1BIHVubWFwLg0KICogQWRkZWQgd2FpdCBzdXBwb3J0IGluIFZGSU8gZm9yIERNQSB1
bm1hcC4NCiAqIFJlb3JkZXJlZCBwYXRjaGVzLg0KICogSW1wcm92ZWQgY29tbWl0IG1lc3NhZ2Vz
IHRvIGRvY3VtZW50IGV2ZW4gbW9yZS4NCnY0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
MjAyNjAxMjEtZG1hYnVmLXJldm9rZS12NC0wLWQzMTFjYmM4NjMzZEBudmlkaWEuY29tDQogKiBD
aGFuZ2VkIERNQV9SRVNWX1VTQUdFX0tFUk5FTCB0byBETUFfUkVTVl9VU0FHRV9CT09LS0VFUC4N
CiAqIE1hZGUgLmludmFsaWRhdGVfbWFwcGluZygpIHRydWx5IG9wdGlvbmFsLg0KICogQWRkZWQg
cGF0Y2ggd2hpY2ggcmVuYW1lcyBkbWFfYnVmX21vdmVfbm90aWZ5KCkgdG8gYmUNCiAgIGRtYV9i
dWZfaW52YWxpZGF0ZV9tYXBwaW5ncygpLg0KICogUmVzdG9yZWQgZG1hX2J1Zl9hdHRhY2htZW50
X2lzX2R5bmFtaWMoKSBmdW5jdGlvbi4NCnYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
MjAyNjAxMjAtZG1hYnVmLXJldm9rZS12My0wLWI3ZTBiMDdiODIxNEBudmlkaWEuY29tLw0KICog
VXNlZCBKYXNvbidzIHdvcmRpbmdzIGZvciBjb21taXRzIGFuZCBjb3ZlciBsZXR0ZXIuDQogKiBS
ZW1vdmVkIElPTU1VRkQgcGF0Y2guDQogKiBSZW5hbWVkIGRtYV9idWZfYXR0YWNobWVudF9pc19y
ZXZva2UoKSB0byBiZSBkbWFfYnVmX2F0dGFjaF9yZXZvY2FibGUoKS4NCiAqIEFkZGVkIHBhdGNo
IHRvIHJlbW92ZSBDT05GSUdfRE1BQlVGX01PVkVfTk9USUZZLg0KICogQWRkZWQgUmV2aWV3ZWQt
YnkgdGFncy4NCiAqIENhbGxlZCB0byBkbWFfcmVzdl93YWl0X3RpbWVvdXQoKSBhZnRlciBkbWFf
YnVmX21vdmVfbm90aWZ5KCkgaW4gVkZJTy4NCiAqIEFkZGVkIGRtYV9idWZfYXR0YWNoX3Jldm9j
YWJsZSgpIGNoZWNrIHRvIFZGSU8gRE1BQlVGIGF0dGFjaCBmdW5jdGlvbi4NCiAqIFNsaWdodGx5
IGNoYW5nZWQgY29tbWl0IG1lc3NhZ2VzLg0KdjI6IGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8y
MDI2MDExOC1kbWFidWYtcmV2b2tlLXYyLTAtYTAzYmIyN2MwODc1QG52aWRpYS5jb20NCiAqIENo
YW5nZWQgc2VyaWVzIHRvIGRvY3VtZW50IHRoZSByZXZva2Ugc2VtYW50aWNzIGluc3RlYWQgb2YN
CiAgIGltcGxlbWVudGluZyBpdC4NCnYxOiBodHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjAx
MTEtZG1hYnVmLXJldm9rZS12MS0wLWZiNGJjYzhjMjU5YkBudmlkaWEuY29tDQoNCi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0NClRoaXMgc2VyaWVzIGlzIGJhc2VkIG9uIGxhdGVzdCBWRklPIGZpeCwgd2hpY2gg
d2lsbCBiZSBzZW50IHRvIExpbnVzDQp2ZXJ5IHNvb24uDQoNCmh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8yMDI2MDEyMS12ZmlvLWFkZC1waW4tdjEtMS00ZTA0OTE2YjE3ZjFAbnZpZGlhLmNv
bS8NCg0KVGhhbmtzDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpUaGlzIHNlcmllcyBkb2N1bWVudHMgYSBk
bWEtYnVmIOKAnHJldm9rZeKAnSBtZWNoYW5pc206IHRvIGFsbG93IGEgZG1hLWJ1Zg0KZXhwb3J0
ZXIgdG8gZXhwbGljaXRseSBpbnZhbGlkYXRlICjigJxraWxs4oCdKSBhIHNoYXJlZCBidWZmZXIg
YWZ0ZXIgaXQgaGFzDQpiZWVuIGRpc3RyaWJ1dGVkIHRvIGltcG9ydGVycywgc28gdGhhdCBmdXJ0
aGVyIENQVSBhbmQgZGV2aWNlIGFjY2VzcyBpcw0KcHJldmVudGVkIGFuZCBpbXBvcnRlcnMgcmVs
aWFibHkgb2JzZXJ2ZSBmYWlsdXJlLg0KDQpUaGUgY2hhbmdlIGluIHRoaXMgc2VyaWVzIGlzIHRv
IHByb3Blcmx5IGRvY3VtZW50IGFuZCB1c2UgZXhpc3RpbmcgY29yZQ0K4oCccmV2b2tlZOKAnSBz
dGF0ZSBvbiB0aGUgZG1hLWJ1ZiBvYmplY3QgYW5kIGEgY29ycmVzcG9uZGluZyBleHBvcnRlci10
cmlnZ2VyZWQNCnJldm9rZSBvcGVyYXRpb24uDQoNCmRtYS1idWYgaGFzIHF1aWV0bHkgYWxsb3dl
ZCBjYWxsaW5nIG1vdmVfbm90aWZ5IG9uIHBpbm5lZCBkbWEtYnVmcywgZXZlbg0KdGhvdWdoIGxl
Z2FjeSBpbXBvcnRlcnMgdXNpbmcgZG1hX2J1Zl9hdHRhY2goKSB3b3VsZCBzaW1wbHkgaWdub3Jl
DQp0aGVzZSBjYWxscy4NCg0KVGhlIGludGVudGlvbiB3YXMgdGhhdCBtb3ZlX25vdGlmeSgpIHdv
dWxkIHRlbGwgdGhlIGltcG9ydGVyIHRvIGV4cGVkaXRlDQppdCdzIHVubWFwcGluZyBwcm9jZXNz
IGFuZCBvbmNlIHRoZSBpbXBvcnRlciBpcyBmdWxseSBmaW5pc2hlZCB3aXRoIERNQSBpdA0Kd291
bGQgdW5tYXAgdGhlIGRtYS1idWYgd2hpY2ggZmluYWxseSBzaWduYWxzIHRoYXQgdGhlIGltcG9y
dGVyIGlzIG5vDQpsb25nZXIgZXZlciBnb2luZyB0byB0b3VjaCB0aGUgbWVtb3J5IGFnYWluLiBJ
bXBvcnRlcnMgdGhhdCB0b3VjaCBwYXN0DQp0aGVpciB1bm1hcCgpIGNhbGwgY2FuIHRyaWdnZXIg
SU9NTVUgZXJyb3JzLCBBRVIgYW5kIGJleW9uZCwgaG93ZXZlcg0KcmVhZC1hbmQtZGlzY2FyZCBh
Y2Nlc3MgYmV0d2VlbiBtb3ZlX25vdGlmeSgpIGFuZCB1bm1hcCBpcyBhbGxvd2VkLg0KDQpUaHVz
LCB3ZSBjYW4gZGVmaW5lIHRoZSBleHBvcnRlcidzIHJldm9rZSBzZXF1ZW5jZSBmb3IgcGlubmVk
IGRtYS1idWYgYXM6DQoNCglkbWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQoJLy8g
UHJldmVudCBuZXcgbWFwcGluZ3MgZnJvbSBiZWluZyBlc3RhYmxpc2hlZA0KCXByaXYtPnJldm9r
ZWQgPSB0cnVlOw0KDQoJLy8gVGVsbCBhbGwgaW1wb3J0ZXJzIHRvIGV2ZW50dWFsbHkgdW5tYXAN
CglkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3MoZG1hYnVmKTsNCg0KCS8vIFdhaXQgZm9yIGFu
eSBpbnByb2dyZXNzIGZlbmNlcyBvbiB0aGUgb2xkIG1hcHBpbmcNCglkbWFfcmVzdl93YWl0X3Rp
bWVvdXQoZG1hYnVmLT5yZXN2LA0KCQkJICAgICAgRE1BX1JFU1ZfVVNBR0VfQk9PS0tFRVAsIGZh
bHNlLA0KCQkJICAgICAgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOw0KCWRtYV9yZXN2X3VubG9jayhk
bWFidWYtPnJlc3YsIE5VTEwpOw0KDQoJLy8gV2FpdCBmb3IgYWxsIGltcG9ydGVycyB0byBjb21w
bGV0ZSB1bm1hcA0KCXdhaXRfZm9yX2NvbXBsZXRpb24oJnByaXYtPnVubWFwcF9jb21wKTsNCg0K
SG93ZXZlciwgZG1hLWJ1ZiBhbHNvIHN1cHBvcnRzIGltcG9ydGVycyB0aGF0IGRvbid0IGRvIGFu
eXRoaW5nIG9uDQptb3ZlX25vdGlmeSgpLCBhbmQgd2lsbCBub3QgdW5tYXAgdGhlIGJ1ZmZlciBp
biBib3VuZGVkIHRpbWUuDQoNClNpbmNlIHN1Y2ggaW1wb3J0ZXJzIHdvdWxkIGNhdXNlIHRoZSBh
Ym92ZSBzZXF1ZW5jZSB0byBoYW5nLCBhIG5ldw0KbWVjaGFuaXNtIGlzIG5lZWRlZCB0byBkZXRl
Y3QgaW5jb21wYXRpYmxlIGltcG9ydGVycy4NCg0KSW50cm9kdWNlIGRtYV9idWZfYXR0YWNoX3Jl
dm9jYWJsZSgpIHdoaWNoIGlmIHRydWUgaW5kaWNhdGVzIHRoZSBhYm92ZQ0Kc2VxdWVuY2UgaXMg
c2FmZSB0byB1c2UgYW5kIHdpbGwgY29tcGxldGUgaW4ga2VybmVsLW9ubHkgYm91bmRlZCB0aW1l
IGZvcg0KdGhpcyBhdHRhY2htZW50Lg0KDQpVbmZvcnR1bmF0ZWx5IGRtYV9idWZfYXR0YWNoX3Jl
dm9jYWJsZSgpIGlzIGdvaW5nIHRvIGZhaWwgZm9yIHRoZSBwb3B1bGFyDQpSRE1BIHBpbm5lZCBp
bXBvcnRlciwgd2hpY2ggbWVhbnMgd2UgY2Fubm90IGludHJvZHVjZSBpdCB0byBleGlzdGluZw0K
cGxhY2VzIHVzaW5nIHBpbm5lZCBtb3ZlX25vdGlmeSgpIHdpdGhvdXQgcG90ZW50aWFsbHkgYnJl
YWtpbmcgZXhpc3RpbmcNCnVzZXJzcGFjZSBmbG93cy4NCg0KRXhpc3RpbmcgZXhwb3J0ZXJzIHRo
YXQgb25seSB0cmlnZ2VyIHRoaXMgZmxvdyBmb3IgUkFTIGVycm9ycyBzaG91bGQgbm90DQpjYWxs
IGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpIGFuZCB3aWxsIHN1ZmZlciBhbiB1bmJvdW5kZWQg
YmxvY2sgb24gdGhlDQpmaW5hbCBjb21wbGV0aW9uLCBob3BpbmcgdGhhdCB0aGUgdXNlcnNwYWNl
IHdpbGwgbm90aWNlIHRoZSBSQVMgYW5kIGNsZWFuDQp0aGluZ3MgdXAuIFdpdGhvdXQgcmV2b2tl
IHN1cHBvcnQgb24gdGhlIFJETUEgcGlubmVkIGltcG9ydGVycyBpdCBkb2Vzbid0DQpzZWVtIGxp
a2UgYW55IG90aGVyIG5vbi1icmVha2luZyBvcHRpb24gaXMgY3VycmVudGx5IHBvc3NpYmxlLg0K
DQpGb3IgbmV3IGV4cG9ydGVycywgbGlrZSBWRklPIGFuZCBSRE1BLCB0aGF0IGhhdmUgdXNlcnNw
YWNlIHRyaWdnZXJlZA0KcmV2b2tlIGV2ZW50cywgdGhlIHVuYm91bmVkIHNsZWVwIHdvdWxkIG5v
dCBiZSBhY2NlcHRhYmxlLiBUaGV5IGNhbiBjYWxsDQpkbWFfYnVmX2F0dGFjaF9yZXZvY2FibGUo
KSBhbmQgd2lsbCBub3Qgd29yayB3aXRoIHRoZSBSRE1BIHBpbm5lZCBpbXBvcnRlcg0KZnJvbSBk
YXkgMCwgcHJldmVudGluZyByZWdyZXNzaW9ucy4NCg0KSW4gdGhlIHByb2Nlc3MgYWRkIGRvY3Vt
ZW50YXRpb24gZXhwbGFpbmluZyB0aGUgYWJvdmUgZGV0YWlscy4NCg0KVGhhbmtzDQoNClNpZ25l
ZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQotLS0NCkxlb24g
Um9tYW5vdnNreSAoOCk6DQogICAgICBkbWEtYnVmOiBSZW5hbWUgLm1vdmVfbm90aWZ5KCkgY2Fs
bGJhY2sgdG8gYSBjbGVhcmVyIGlkZW50aWZpZXINCiAgICAgIGRtYS1idWY6IFJlbmFtZSBkbWFf
YnVmX21vdmVfbm90aWZ5KCkgdG8gZG1hX2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdzKCkNCiAgICAg
IGRtYS1idWY6IEFsd2F5cyBidWlsZCB3aXRoIERNQUJVRl9NT1ZFX05PVElGWQ0KICAgICAgdmZp
bzogV2FpdCBmb3IgZG1hLWJ1ZiBpbnZhbGlkYXRpb24gdG8gY29tcGxldGUNCiAgICAgIGRtYS1i
dWY6IE1ha2UgLmludmFsaWRhdGVfbWFwcGluZygpIHRydWx5IG9wdGlvbmFsDQogICAgICBkbWEt
YnVmOiBBZGQgZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKCkNCiAgICAgIHZmaW86IFBlcm1pdCBW
RklPIHRvIHdvcmsgd2l0aCBwaW5uZWQgaW1wb3J0ZXJzDQogICAgICBpb21tdWZkOiBBZGQgZG1h
X2J1Zl9waW4oKQ0KDQogZHJpdmVycy9kbWEtYnVmL0tjb25maWcgICAgICAgICAgICAgICAgICAg
ICB8IDEyIC0tLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAgICAg
IHwgNjkgKysrKysrKysrKysrKysrKystLS0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kbWFfYnVmLmMgfCAxNCArKy0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9vYmplY3QuYyAgfCAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL0tj
b25maWcgICAgICAgICAgfCAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9w
cmltZS5jICAgICAgfCAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVm
LmMgICAgICAgfCAgNyArLS0NCiBkcml2ZXJzL2dwdS9kcm0veGUveGVfYm8uYyAgICAgICAgICAg
ICAgICAgIHwgIDIgKy0NCiBkcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jICAgICAgICAg
ICAgIHwgMTQgKystLS0NCiBkcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jICAg
ICAgIHwgMTMgLS0tLS0NCiBkcml2ZXJzL2luZmluaWJhbmQvaHcvbWx4NS9tci5jICAgICAgICAg
ICAgIHwgIDIgKy0NCiBkcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYyAgICAgICAgICAgICAg
IHwgMTEgKysrLQ0KIGRyaXZlcnMvaW9tbXUvaW9tbXVmZC9zZWxmdGVzdC5jICAgICAgICAgICAg
fCAgMiArLQ0KIGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMgICAgICAgICAgfCA5
MCArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
ICAgICAgICAgICAgICAgICAgICAgfCAxNyArKystLS0NCiAxNSBmaWxlcyBjaGFuZ2VkLCAxNjQg
aW5zZXJ0aW9ucygrKSwgOTUgZGVsZXRpb25zKC0pDQotLS0NCmJhc2UtY29tbWl0OiA2MWNlYWYy
MzYxMTVmMjBmNGZkZDdjZjYwZjg4M2FkYTEwNjMzNDlhDQpjaGFuZ2UtaWQ6IDIwMjUxMjIxLWRt
YWJ1Zi1yZXZva2UtYjkwZWYxNmU0MjM2DQoNCkJlc3QgcmVnYXJkcywNCi0tICANCkxlb24gUm9t
YW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
