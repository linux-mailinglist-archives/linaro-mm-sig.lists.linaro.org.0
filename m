Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WI1uKbzNcGkOaAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 13:59:40 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D06A57372
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 13:59:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3358340141
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 12:59:39 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id AC9683F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 12:59:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ea+Q3WRy;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 22D4860053;
	Wed, 21 Jan 2026 12:59:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D538C116D0;
	Wed, 21 Jan 2026 12:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769000371;
	bh=W2rPiTt7POS+Rymv7il/JSlLvJ76kJZLP7yqkB/gfmg=;
	h=From:To:Cc:Subject:Date:From;
	b=ea+Q3WRy2FiSABNW/9niK0WvNzge7rD9suFwk6d+tPTgwv1TkWt7BR+E2wfmOMHf2
	 ONEsHZtzbyMk1AKsw72wPiI7hPZhQxXp5six5NvXYka1th0ZVIwrnAdzPAW2twSds8
	 QpxPuHqYtogOogTCKwpgZSLmPCaaqqWRWeMwVcwVjqnAvrzJjg9SC3URCKimztvVhF
	 uPOUaJ4u9gE7n8uZscmt/pBR+v/5Q/NfqWYwhX2P58PXSDXOM8lgDZFVkaZ8Nk+qvC
	 0hUbFns2SLdm1dXiEzn/ldfyOZFRdxS4+KEVqwLK/2qDt7X8TYnDDxTQZHn6gzpcxB
	 WRF/6hUo4kf2Q==
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
Date: Wed, 21 Jan 2026 14:59:08 +0200
Message-ID: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20251221-dmabuf-revoke-b90ef16e4236
X-Mailer: b4 0.15-dev-a6db3
X-Spamd-Bar: ----
Message-ID-Hash: JQX63NLU6YUKXC2OCC5JG4EJY6PMJAKP
X-Message-ID-Hash: JQX63NLU6YUKXC2OCC5JG4EJY6PMJAKP
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 0/8] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JQX63NLU6YUKXC2OCC5JG4EJY6PMJAKP/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,nvidia.com:email,nvidia.com:mid,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 2D06A57372
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Q2hhbmdlbG9nOg0KdjQ6DQogKiBDaGFuZ2VkIERNQV9SRVNWX1VTQUdFX0tFUk5FTCB0byBETUFf
UkVTVl9VU0FHRV9CT09LS0VFUC4NCiAqIE1hZGUgLmludmFsaWRhdGVfbWFwcGluZygpIHRydWx5
IG9wdGlvbmFsLg0KICogQWRkZWQgcGF0Y2ggd2hpY2ggcmVuYW1lcyBkbWFfYnVmX21vdmVfbm90
aWZ5KCkgdG8gYmUNCiAgIGRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncygpLg0KICogUmVzdG9y
ZWQgZG1hX2J1Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMoKSBmdW5jdGlvbi4NCnYzOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAxMjAtZG1hYnVmLXJldm9rZS12My0wLWI3ZTBiMDdi
ODIxNEBudmlkaWEuY29tLw0KICogVXNlZCBKYXNvbidzIHdvcmRpbmdzIGZvciBjb21taXRzIGFu
ZCBjb3ZlciBsZXR0ZXIuDQogKiBSZW1vdmVkIElPTU1VRkQgcGF0Y2guDQogKiBSZW5hbWVkIGRt
YV9idWZfYXR0YWNobWVudF9pc19yZXZva2UoKSB0byBiZSBkbWFfYnVmX2F0dGFjaF9yZXZvY2Fi
bGUoKS4NCiAqIEFkZGVkIHBhdGNoIHRvIHJlbW92ZSBDT05GSUdfRE1BQlVGX01PVkVfTk9USUZZ
Lg0KICogQWRkZWQgUmV2aWV3ZWQtYnkgdGFncy4NCiAqIENhbGxlZCB0byBkbWFfcmVzdl93YWl0
X3RpbWVvdXQoKSBhZnRlciBkbWFfYnVmX21vdmVfbm90aWZ5KCkgaW4gVkZJTy4NCiAqIEFkZGVk
IGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpIGNoZWNrIHRvIFZGSU8gRE1BQlVGIGF0dGFjaCBm
dW5jdGlvbi4NCiAqIFNsaWdodGx5IGNoYW5nZWQgY29tbWl0IG1lc3NhZ2VzLg0KdjI6IGh0dHBz
Oi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDExOC1kbWFidWYtcmV2b2tlLXYyLTAtYTAzYmIyN2Mw
ODc1QG52aWRpYS5jb20NCiAqIENoYW5nZWQgc2VyaWVzIHRvIGRvY3VtZW50IHRoZSByZXZva2Ug
c2VtYW50aWNzIGluc3RlYWQgb2YNCiAgIGltcGxlbWVudGluZyBpdC4NCnYxOiBodHRwczovL3Bh
dGNoLm1zZ2lkLmxpbmsvMjAyNjAxMTEtZG1hYnVmLXJldm9rZS12MS0wLWZiNGJjYzhjMjU5YkBu
dmlkaWEuY29tDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NClRoaXMgc2VyaWVzIGRvY3VtZW50cyBhIGRt
YS1idWYg4oCccmV2b2tl4oCdIG1lY2hhbmlzbTogdG8gYWxsb3cgYSBkbWEtYnVmDQpleHBvcnRl
ciB0byBleHBsaWNpdGx5IGludmFsaWRhdGUgKOKAnGtpbGzigJ0pIGEgc2hhcmVkIGJ1ZmZlciBh
ZnRlciBpdCBoYXMNCmJlZW4gZGlzdHJpYnV0ZWQgdG8gaW1wb3J0ZXJzLCBzbyB0aGF0IGZ1cnRo
ZXIgQ1BVIGFuZCBkZXZpY2UgYWNjZXNzIGlzDQpwcmV2ZW50ZWQgYW5kIGltcG9ydGVycyByZWxp
YWJseSBvYnNlcnZlIGZhaWx1cmUuDQoNClRoZSBjaGFuZ2UgaW4gdGhpcyBzZXJpZXMgaXMgdG8g
cHJvcGVybHkgZG9jdW1lbnQgYW5kIHVzZSBleGlzdGluZyBjb3JlDQrigJxyZXZva2Vk4oCdIHN0
YXRlIG9uIHRoZSBkbWEtYnVmIG9iamVjdCBhbmQgYSBjb3JyZXNwb25kaW5nIGV4cG9ydGVyLXRy
aWdnZXJlZA0KcmV2b2tlIG9wZXJhdGlvbi4NCg0KZG1hLWJ1ZiBoYXMgcXVpZXRseSBhbGxvd2Vk
IGNhbGxpbmcgbW92ZV9ub3RpZnkgb24gcGlubmVkIGRtYS1idWZzLCBldmVuDQp0aG91Z2ggbGVn
YWN5IGltcG9ydGVycyB1c2luZyBkbWFfYnVmX2F0dGFjaCgpIHdvdWxkIHNpbXBseSBpZ25vcmUN
CnRoZXNlIGNhbGxzLg0KDQpSRE1BIHNhdyB0aGlzIGFuZCBuZWVkZWQgdG8gdXNlIGFsbG93X3Bl
ZXIycGVlcj10cnVlLCBzbyBpbXBsZW1lbnRlZCBhDQpuZXctc3R5bGUgcGlubmVkIGltcG9ydGVy
IHdpdGggYW4gZXhwbGljaXRseSBub24td29ya2luZyBtb3ZlX25vdGlmeSgpDQpjYWxsYmFjay4N
Cg0KVGhpcyBoYXMgYmVlbiB0b2xlcmFibGUgYmVjYXVzZSB0aGUgZXhpc3RpbmcgZXhwb3J0ZXJz
IGFyZSB0aG91Z2h0IHRvDQpvbmx5IGNhbGwgbW92ZV9ub3RpZnkoKSBvbiBhIHBpbm5lZCBETUFC
VUYgdW5kZXIgUkFTIGV2ZW50cyBhbmQgd2UNCmhhdmUgYmVlbiB3aWxsaW5nIHRvIHRvbGVyYXRl
IHRoZSBVQUYgdGhhdCByZXN1bHRzIGJ5IGFsbG93aW5nIHRoZQ0KaW1wb3J0ZXIgdG8gY29udGlu
dWUgdG8gdXNlIHRoZSBtYXBwaW5nIGluIHRoaXMgcmFyZSBjYXNlLg0KDQpWRklPIHdhbnRzIHRv
IGltcGxlbWVudCBhIHBpbiBzdXBwb3J0aW5nIGV4cG9ydGVyIHRoYXQgd2lsbCBpc3N1ZSBhDQpy
ZXZva2luZyBtb3ZlX25vdGlmeSgpIGFyb3VuZCBGTFJzIGFuZCBhIGZldyBvdGhlciB1c2VyIHRy
aWdnZXJhYmxlDQpvcGVyYXRpb25zLiBTaW5jZSB0aGlzIGlzIG11Y2ggbW9yZSBjb21tb24gd2Ug
YXJlIG5vdCB3aWxsaW5nIHRvDQp0b2xlcmF0ZSB0aGUgc2VjdXJpdHkgVUFGIGNhdXNlZCBieSBp
bnRlcndvcmtpbmcgd2l0aCBub24tbW92ZV9ub3RpZnkoKQ0Kc3VwcG9ydGluZyBkcml2ZXJzLiBU
aHVzIHRpbGwgbm93IFZGSU8gaGFzIHJlcXVpcmVkIGR5bmFtaWMgaW1wb3J0ZXJzLA0KZXZlbiB0
aG91Z2ggaXQgbmV2ZXIgYWN0dWFsbHkgbW92ZXMgdGhlIGJ1ZmZlciBsb2NhdGlvbi4NCg0KVG8g
YWxsb3cgVkZJTyB0byB3b3JrIHdpdGggcGlubmVkIGltcG9ydGVycywgYWNjb3JkaW5nIHRvIGhv
dyBkbWEtYnVmDQp3YXMgaW50ZW5kZWQsIHdlIG5lZWQgdG8gYWxsb3cgVkZJTyB0byBkZXRlY3Qg
aWYgYW4gaW1wb3J0ZXIgaXMgbGVnYWN5DQpvciBSRE1BIGFuZCBkb2VzIG5vdCBhY3R1YWxseSBp
bXBsZW1lbnQgbW92ZV9ub3RpZnkoKS4NCg0KSW4gdGhlb3J5IGFsbCBleHBvcnRlcnMgdGhhdCBj
YWxsIG1vdmVfbm90aWZ5KCkgb24gcGlubmVkIGRtYS1idWYncw0Kc2hvdWxkIGNhbGwgdGhpcyBm
dW5jdGlvbiwgaG93ZXZlciB0aGF0IHdvdWxkIGJyZWFrIGEgbnVtYmVyIG9mIHdpZGVseQ0KdXNl
ZCBOSUMvR1BVIGZsb3dzLiBUaHVzIGZvciBub3cgZG8gbm90IHNwcmVhZCB0aGlzIGZ1cnRoZXIg
dGhhbiBWRklPDQp1bnRpbCB3ZSBjYW4gdW5kZXJzdGFuZCBob3cgbXVjaCBvZiBSRE1BIGNhbiBp
bXBsZW1lbnQgdGhlIGZ1bGwNCnNlbWFudGljLg0KDQpJbiB0aGUgcHJvY2VzcyBjbGFyaWZ5IGhv
dyBtb3ZlX25vdGlmeSBpcyBpbnRlbmRlZCB0byBiZSB1c2VkIHdpdGgNCnBpbm5lZCBkbWEtYnVm
cy4NCg0KVGhhbmtzDQoNClNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52
aWRpYS5jb20+DQotLS0NCkxlb24gUm9tYW5vdnNreSAoOCk6DQogICAgICBkbWEtYnVmOiBSZW5h
bWUgLm1vdmVfbm90aWZ5KCkgY2FsbGJhY2sgdG8gYSBjbGVhcmVyIGlkZW50aWZpZXINCiAgICAg
IGRtYS1idWY6IFJlbmFtZSBkbWFfYnVmX21vdmVfbm90aWZ5KCkgdG8gZG1hX2J1Zl9pbnZhbGlk
YXRlX21hcHBpbmdzKCkNCiAgICAgIGRtYS1idWY6IEFsd2F5cyBidWlsZCB3aXRoIERNQUJVRl9N
T1ZFX05PVElGWQ0KICAgICAgZG1hLWJ1ZjogTWFrZSAuaW52YWxpZGF0ZV9tYXBwaW5nKCkgdHJ1
bHkgb3B0aW9uYWwNCiAgICAgIGRtYS1idWY6IEFkZCBjaGVjayBmdW5jdGlvbiBmb3IgcmV2b2tl
IHNlbWFudGljcw0KICAgICAgaW9tbXVmZDogUGluIGRtYS1idWYgaW1wb3J0ZXIgZm9yIHJldm9r
ZSBzZW1hbnRpY3MNCiAgICAgIHZmaW86IFdhaXQgZm9yIGRtYS1idWYgaW52YWxpZGF0aW9uIHRv
IGNvbXBsZXRlDQogICAgICB2ZmlvOiBWYWxpZGF0ZSBkbWEtYnVmIHJldm9jYXRpb24gc2VtYW50
aWNzDQoNCiBkcml2ZXJzL2RtYS1idWYvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgIHwgMTIg
LS0tLS0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAgfCA1
MyArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kbWFfYnVmLmMgfCAxNCArKystLS0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9vYmplY3QuYyAgfCAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
a2ZkL0tjb25maWcgICAgICAgICAgfCAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmly
dGdwdV9wcmltZS5jICAgICAgfCAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9k
bWFfYnVmLmMgICAgICAgfCAgNyArKy0tDQogZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMgICAg
ICAgICAgICAgICAgICB8ICAyICstDQogZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYyAg
ICAgICAgICAgICB8IDE0ICsrKy0tLS0tDQogZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9k
bWFidWYuYyAgICAgICB8IDEzIC0tLS0tLS0NCiBkcml2ZXJzL2luZmluaWJhbmQvaHcvbWx4NS9t
ci5jICAgICAgICAgICAgIHwgIDIgKy0NCiBkcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYyAg
ICAgICAgICAgICAgIHwgMTEgKysrKy0tDQogZHJpdmVycy9pb21tdS9pb21tdWZkL3NlbGZ0ZXN0
LmMgICAgICAgICAgICB8ICAyICstDQogZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYu
YyAgICAgICAgICB8IDEzICsrKysrLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAg
ICAgICAgICAgICAgIHwgIDkgKystLS0NCiAxNSBmaWxlcyBjaGFuZ2VkLCA4NCBpbnNlcnRpb25z
KCspLCA3NCBkZWxldGlvbnMoLSkNCi0tLQ0KYmFzZS1jb21taXQ6IDlhY2U0NzUzYTUyMDJiMDIx
OTFkNTRlOWZkZjdmOWUzZDAyYjg1ZWINCmNoYW5nZS1pZDogMjAyNTEyMjEtZG1hYnVmLXJldm9r
ZS1iOTBlZjE2ZTQyMzYNCg0KQmVzdCByZWdhcmRzLA0KLS0gIA0KTGVvbiBSb21hbm92c2t5IDxs
ZW9ucm9AbnZpZGlhLmNvbT4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
