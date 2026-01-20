Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPpkIjmub2lBGgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 17:32:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB9547A05
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 17:32:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D5B340171
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 14:07:25 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id C17053F74E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 14:07:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Z9FPLJNH;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1DB2D600CB;
	Tue, 20 Jan 2026 14:07:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 347A2C16AAE;
	Tue, 20 Jan 2026 14:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768918037;
	bh=ROKkB0mIS7khlsv4KQDOsZjX4a+rHO4aJnOw0MFmrm0=;
	h=From:To:Cc:Subject:Date:From;
	b=Z9FPLJNHtjmg+g+XBBXJHq1bk31q3tuCG8U641sPe5PuEyRi4qoevHZQgLWvE3BeV
	 NHcVnzAv548oIrOaPpNs4fPlzIzY8D6OAgDy24afQIILoJ5sUJRw4C9U44GL1Jk1Gs
	 6mqU9Gb2bBQDbKFny5CeMgMjvN3hpdZnU3hUFMqdq7O8rVtRv92lUsTZvkNBoFIycl
	 RYDK/SoQiG5vtv2N1Wn7zoWr52yIAtUVuf58teP6LzB3tVY3Xrzd0h81xYeR4xRJwD
	 Brafxmuv73RoqMNIrYdIQvZy7BhjYWgDSpoh6V83F3ly/524nRWpBY6F66Y2zu5aT3
	 /oAR4obsvM6mA==
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
Date: Tue, 20 Jan 2026 16:07:00 +0200
Message-ID: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20251221-dmabuf-revoke-b90ef16e4236
X-Mailer: b4 0.15-dev-a6db3
X-Spamd-Bar: ----
Message-ID-Hash: DCRYM2RMMDFYJ7FAU2SQ6Y232QIMWCYO
X-Message-ID-Hash: DCRYM2RMMDFYJ7FAU2SQ6Y232QIMWCYO
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/7] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DCRYM2RMMDFYJ7FAU2SQ6Y232QIMWCYO/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,linaro.org:email,nvidia.com:email,nvidia.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 0EB9547A05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Q2hhbmdlbG9nOg0KdjM6DQogKiBVc2VkIEphc29uJ3Mgd29yZGluZ3MgZm9yIGNvbW1pdHMgYW5k
IGNvdmVyIGxldHRlci4NCiAqIFJlbW92ZWQgSU9NTVVGRCBwYXRjaC4NCiAqIFJlbmFtZWQgZG1h
X2J1Zl9hdHRhY2htZW50X2lzX3Jldm9rZSgpIHRvIGJlIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJs
ZSgpLg0KICogQWRkZWQgcGF0Y2ggdG8gcmVtb3ZlIENPTkZJR19ETUFCVUZfTU9WRV9OT1RJRlku
DQogKiBBZGRlZCBSZXZpZXdlZC1ieSB0YWdzLg0KICogQ2FsbGVkIHRvIGRtYV9yZXN2X3dhaXRf
dGltZW91dCgpIGFmdGVyIGRtYV9idWZfbW92ZV9ub3RpZnkoKSBpbiBWRklPLg0KICogQWRkZWQg
ZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKCkgY2hlY2sgdG8gVkZJTyBETUFCVUYgYXR0YWNoIGZ1
bmN0aW9uLg0KICogU2xpZ2h0bHkgY2hhbmdlZCBjb21taXQgbWVzc2FnZXMuDQp2MjogaHR0cHM6
Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYwMTE4LWRtYWJ1Zi1yZXZva2UtdjItMC1hMDNiYjI3YzA4
NzVAbnZpZGlhLmNvbQ0KICogQ2hhbmdlZCBzZXJpZXMgdG8gZG9jdW1lbnQgdGhlIHJldm9rZSBz
ZW1hbnRpY3MgaW5zdGVhZCBvZg0KICAgaW1wbGVtZW50aW5nIGl0Lg0KdjE6IGh0dHBzOi8vcGF0
Y2gubXNnaWQubGluay8yMDI2MDExMS1kbWFidWYtcmV2b2tlLXYxLTAtZmI0YmNjOGMyNTliQG52
aWRpYS5jb20NCg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KVGhpcyBzZXJpZXMgZG9jdW1lbnRzIGEgZG1h
LWJ1ZiDigJxyZXZva2XigJ0gbWVjaGFuaXNtOiB0byBhbGxvdyBhIGRtYS1idWYNCmV4cG9ydGVy
IHRvIGV4cGxpY2l0bHkgaW52YWxpZGF0ZSAo4oCca2lsbOKAnSkgYSBzaGFyZWQgYnVmZmVyIGFm
dGVyIGl0IGhhcw0KYmVlbiBkaXN0cmlidXRlZCB0byBpbXBvcnRlcnMsIHNvIHRoYXQgZnVydGhl
ciBDUFUgYW5kIGRldmljZSBhY2Nlc3MgaXMNCnByZXZlbnRlZCBhbmQgaW1wb3J0ZXJzIHJlbGlh
Ymx5IG9ic2VydmUgZmFpbHVyZS4NCg0KVGhlIGNoYW5nZSBpbiB0aGlzIHNlcmllcyBpcyB0byBw
cm9wZXJseSBkb2N1bWVudCBhbmQgdXNlIGV4aXN0aW5nIGNvcmUNCuKAnHJldm9rZWTigJ0gc3Rh
dGUgb24gdGhlIGRtYS1idWYgb2JqZWN0IGFuZCBhIGNvcnJlc3BvbmRpbmcgZXhwb3J0ZXItdHJp
Z2dlcmVkDQpyZXZva2Ugb3BlcmF0aW9uLg0KDQpkbWEtYnVmIGhhcyBxdWlldGx5IGFsbG93ZWQg
Y2FsbGluZyBtb3ZlX25vdGlmeSBvbiBwaW5uZWQgZG1hLWJ1ZnMsIGV2ZW4NCnRob3VnaCBsZWdh
Y3kgaW1wb3J0ZXJzIHVzaW5nIGRtYV9idWZfYXR0YWNoKCkgd291bGQgc2ltcGx5IGlnbm9yZQ0K
dGhlc2UgY2FsbHMuDQoNClJETUEgc2F3IHRoaXMgYW5kIG5lZWRlZCB0byB1c2UgYWxsb3dfcGVl
cjJwZWVyPXRydWUsIHNvIGltcGxlbWVudGVkIGENCm5ldy1zdHlsZSBwaW5uZWQgaW1wb3J0ZXIg
d2l0aCBhbiBleHBsaWNpdGx5IG5vbi13b3JraW5nIG1vdmVfbm90aWZ5KCkNCmNhbGxiYWNrLg0K
DQpUaGlzIGhhcyBiZWVuIHRvbGVyYWJsZSBiZWNhdXNlIHRoZSBleGlzdGluZyBleHBvcnRlcnMg
YXJlIHRob3VnaHQgdG8NCm9ubHkgY2FsbCBtb3ZlX25vdGlmeSgpIG9uIGEgcGlubmVkIERNQUJV
RiB1bmRlciBSQVMgZXZlbnRzIGFuZCB3ZQ0KaGF2ZSBiZWVuIHdpbGxpbmcgdG8gdG9sZXJhdGUg
dGhlIFVBRiB0aGF0IHJlc3VsdHMgYnkgYWxsb3dpbmcgdGhlDQppbXBvcnRlciB0byBjb250aW51
ZSB0byB1c2UgdGhlIG1hcHBpbmcgaW4gdGhpcyByYXJlIGNhc2UuDQoNClZGSU8gd2FudHMgdG8g
aW1wbGVtZW50IGEgcGluIHN1cHBvcnRpbmcgZXhwb3J0ZXIgdGhhdCB3aWxsIGlzc3VlIGENCnJl
dm9raW5nIG1vdmVfbm90aWZ5KCkgYXJvdW5kIEZMUnMgYW5kIGEgZmV3IG90aGVyIHVzZXIgdHJp
Z2dlcmFibGUNCm9wZXJhdGlvbnMuIFNpbmNlIHRoaXMgaXMgbXVjaCBtb3JlIGNvbW1vbiB3ZSBh
cmUgbm90IHdpbGxpbmcgdG8NCnRvbGVyYXRlIHRoZSBzZWN1cml0eSBVQUYgY2F1c2VkIGJ5IGlu
dGVyd29ya2luZyB3aXRoIG5vbi1tb3ZlX25vdGlmeSgpDQpzdXBwb3J0aW5nIGRyaXZlcnMuIFRo
dXMgdGlsbCBub3cgVkZJTyBoYXMgcmVxdWlyZWQgZHluYW1pYyBpbXBvcnRlcnMsDQpldmVuIHRo
b3VnaCBpdCBuZXZlciBhY3R1YWxseSBtb3ZlcyB0aGUgYnVmZmVyIGxvY2F0aW9uLg0KDQpUbyBh
bGxvdyBWRklPIHRvIHdvcmsgd2l0aCBwaW5uZWQgaW1wb3J0ZXJzLCBhY2NvcmRpbmcgdG8gaG93
IGRtYS1idWYNCndhcyBpbnRlbmRlZCwgd2UgbmVlZCB0byBhbGxvdyBWRklPIHRvIGRldGVjdCBp
ZiBhbiBpbXBvcnRlciBpcyBsZWdhY3kNCm9yIFJETUEgYW5kIGRvZXMgbm90IGFjdHVhbGx5IGlt
cGxlbWVudCBtb3ZlX25vdGlmeSgpLg0KDQpJbnRyb2R1Y2UgYSBuZXcgZnVuY3Rpb24gdGhhdCBl
eHBvcnRlcnMgY2FuIGNhbGwgdG8gZGV0ZWN0IHRoZXNlIGxlc3MNCmNhcGFibGUgaW1wb3J0ZXJz
LiBWRklPIGNhbiB0aGVuIHJlZnVzZSB0byBhY2NlcHQgdGhlbSBkdXJpbmcgYXR0YWNoLg0KDQpJ
biB0aGVvcnkgYWxsIGV4cG9ydGVycyB0aGF0IGNhbGwgbW92ZV9ub3RpZnkoKSBvbiBwaW5uZWQg
ZG1hLWJ1ZidzDQpzaG91bGQgY2FsbCB0aGlzIGZ1bmN0aW9uLCBob3dldmVyIHRoYXQgd291bGQg
YnJlYWsgYSBudW1iZXIgb2Ygd2lkZWx5DQp1c2VkIE5JQy9HUFUgZmxvd3MuIFRodXMgZm9yIG5v
dyBkbyBub3Qgc3ByZWFkIHRoaXMgZnVydGhlciB0aGFuIFZGSU8NCnVudGlsIHdlIGNhbiB1bmRl
cnN0YW5kIGhvdyBtdWNoIG9mIFJETUEgY2FuIGltcGxlbWVudCB0aGUgZnVsbA0Kc2VtYW50aWMu
DQoNCkluIHRoZSBwcm9jZXNzIGNsYXJpZnkgaG93IG1vdmVfbm90aWZ5IGlzIGludGVuZGVkIHRv
IGJlIHVzZWQgd2l0aA0KcGlubmVkIGRtYS1idWZzLg0KDQpUaGFua3MNCg0KU2lnbmVkLW9mZi1i
eTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCi0tLQ0KTGVvbiBSb21hbm92
c2t5ICg3KToNCiAgICAgIGRtYS1idWY6IFJlbmFtZSAubW92ZV9ub3RpZnkoKSBjYWxsYmFjayB0
byBhIGNsZWFyZXIgaWRlbnRpZmllcg0KICAgICAgZG1hLWJ1ZjogQWx3YXlzIGJ1aWxkIHdpdGgg
RE1BQlVGX01PVkVfTk9USUZZDQogICAgICBkbWEtYnVmOiBEb2N1bWVudCBSRE1BIG5vbi1PRFAg
aW52YWxpZGF0ZV9tYXBwaW5nKCkgc3BlY2lhbCBjYXNlDQogICAgICBkbWEtYnVmOiBBZGQgY2hl
Y2sgZnVuY3Rpb24gZm9yIHJldm9rZSBzZW1hbnRpY3MNCiAgICAgIGlvbW11ZmQ6IFBpbiBkbWEt
YnVmIGltcG9ydGVyIGZvciByZXZva2Ugc2VtYW50aWNzDQogICAgICB2ZmlvOiBXYWl0IGZvciBk
bWEtYnVmIGludmFsaWRhdGlvbiB0byBjb21wbGV0ZQ0KICAgICAgdmZpbzogVmFsaWRhdGUgZG1h
LWJ1ZiByZXZvY2F0aW9uIHNlbWFudGljcw0KDQogZHJpdmVycy9kbWEtYnVmL0tjb25maWcgICAg
ICAgICAgICAgICAgICAgICB8IDEyIC0tLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyAg
ICAgICAgICAgICAgICAgICB8IDY5ICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tDQogZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8IDE0ICsrKy0tLQ0KIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL0tjb25maWcgICAgICAgICAgfCAgMiArLQ0KIGRyaXZl
cnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wcmltZS5jICAgICAgfCAgMiArLQ0KIGRyaXZlcnMv
Z3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmMgICAgICAgfCAgNyArKy0NCiBkcml2ZXJzL2dw
dS9kcm0veGUveGVfZG1hX2J1Zi5jICAgICAgICAgICAgIHwgMTQgKysrLS0tDQogZHJpdmVycy9p
bmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYyAgICAgICB8IDEzICstLS0tLQ0KIGRyaXZlcnMv
aW5maW5pYmFuZC9ody9tbHg1L21yLmMgICAgICAgICAgICAgfCAgMiArLQ0KIGRyaXZlcnMvaW9t
bXUvaW9tbXVmZC9wYWdlcy5jICAgICAgICAgICAgICAgfCAxMSArKysrLQ0KIGRyaXZlcnMvdmZp
by9wY2kvdmZpb19wY2lfZG1hYnVmLmMgICAgICAgICAgfCAgOCArKysrDQogaW5jbHVkZS9saW51
eC9kbWEtYnVmLmggICAgICAgICAgICAgICAgICAgICB8ICA5ICsrLS0NCiAxMiBmaWxlcyBjaGFu
Z2VkLCA5NiBpbnNlcnRpb25zKCspLCA2NyBkZWxldGlvbnMoLSkNCi0tLQ0KYmFzZS1jb21taXQ6
IDlhY2U0NzUzYTUyMDJiMDIxOTFkNTRlOWZkZjdmOWUzZDAyYjg1ZWINCmNoYW5nZS1pZDogMjAy
NTEyMjEtZG1hYnVmLXJldm9rZS1iOTBlZjE2ZTQyMzYNCg0KQmVzdCByZWdhcmRzLA0KLS0gIA0K
TGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
