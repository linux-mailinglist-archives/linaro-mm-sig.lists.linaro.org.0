Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMXQDie0fGnSOQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:37:43 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A27C2BB22F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:37:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFA843F720
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 13:37:41 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id E84AE3F720
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 13:37:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Ztb5d4ge;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 43CB443EEC;
	Fri, 30 Jan 2026 13:37:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C4C6C4CEF7;
	Fri, 30 Jan 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769780254;
	bh=JM5ClxRt+pnQDAxcgQA3pw6Qd6iDb+qngu7mGzqmca8=;
	h=From:To:Cc:Subject:Date:From;
	b=Ztb5d4geNYQ4a6cz3kGUKxjmJ7ibSBzZTn0rboMaA6J9QVxgWkqnP0/QT/XKNCUSE
	 hhjLu/nZjv7HN8je0oVrw2IjGzcoUDYiwATmbx4plVGGXGg+tS7EP0ftB742/9WHbD
	 HodzA8n1YzjdKSCXivNxnKOL1nVUp15Hb22RnamMlRMu839k2CKP2eRCvMaTkoTPpp
	 n8SFHW8LHQ/nKvYSnHyPT7ThRqbw5v00Vk3k3z23BQDeaqMnKpMLHOa1K2syRs1BS1
	 Q6eSXA7EoGqp9kXzw3NL2LoBk3xmTr4VW1tpRxpcNe5zr1PPPNcOVLT38r2J9M8/XN
	 jORfYJr5pEwJQ==
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
Date: Fri, 30 Jan 2026 15:37:16 +0200
Message-ID: <20260130-dmabuf-revoke-v6-0-06278f9b7bf0@nvidia.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20251221-dmabuf-revoke-b90ef16e4236
X-Mailer: b4 0.15-dev-47773
X-Spamd-Bar: ----
Message-ID-Hash: X6FFLMHK4FWAABD3LGNXATDVH7IOVGYQ
X-Message-ID-Hash: X6FFLMHK4FWAABD3LGNXATDVH7IOVGYQ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 0/8] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X6FFLMHK4FWAABD3LGNXATDVH7IOVGYQ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,msgid.link:url,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: A27C2BB22F
X-Rspamd-Action: no action

Q2hhbmdlbG9nOg0KdjY6DQogKiBBZGRlZCBSZXZpZXdlZC1ieSB0YWdzLg0KICogQ2hhbmdlZCBm
b3IgYmxvY2tpbmcgd2FpdF9mb3JfY29tcGxldGlvbigpIGluIFZGSU8NCiAqIEZpeGVkIHJhY2Ug
YmV0d2VlbiAtPmF0dGFjaCBhbmQgbW92ZV9ub3RpZnksIHdoZXJlIHByaXYtPnJldm9rZWQgaXMN
CiAgIGZsaXBwZWQgYW5kIGxvY2sgaXMgcmVsZWFzZWQuDQp2NTogaHR0cHM6Ly9wYXRjaC5tc2dp
ZC5saW5rLzIwMjYwMTI0LWRtYWJ1Zi1yZXZva2UtdjUtMC1mOThmY2E5MTdlOTZAbnZpZGlhLmNv
bQ0KICogRG9jdW1lbnRlZCB0aGUgRE1BLUJVRiBleHBlY3RhdGlvbnMgYXJvdW5kIERNQSB1bm1h
cC4NCiAqIEFkZGVkIHdhaXQgc3VwcG9ydCBpbiBWRklPIGZvciBETUEgdW5tYXAuDQogKiBSZW9y
ZGVyZWQgcGF0Y2hlcy4NCiAqIEltcHJvdmVkIGNvbW1pdCBtZXNzYWdlcyB0byBkb2N1bWVudCBl
dmVuIG1vcmUuDQp2NDogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMTIxLWRtYWJ1
Zi1yZXZva2UtdjQtMC1kMzExY2JjODYzM2RAbnZpZGlhLmNvbQ0KICogQ2hhbmdlZCBETUFfUkVT
Vl9VU0FHRV9LRVJORUwgdG8gRE1BX1JFU1ZfVVNBR0VfQk9PS0tFRVAuDQogKiBNYWRlIC5pbnZh
bGlkYXRlX21hcHBpbmcoKSB0cnVseSBvcHRpb25hbC4NCiAqIEFkZGVkIHBhdGNoIHdoaWNoIHJl
bmFtZXMgZG1hX2J1Zl9tb3ZlX25vdGlmeSgpIHRvIGJlDQogICBkbWFfYnVmX2ludmFsaWRhdGVf
bWFwcGluZ3MoKS4NCiAqIFJlc3RvcmVkIGRtYV9idWZfYXR0YWNobWVudF9pc19keW5hbWljKCkg
ZnVuY3Rpb24uDQp2MzogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMTIwLWRtYWJ1
Zi1yZXZva2UtdjMtMC1iN2UwYjA3YjgyMTRAbnZpZGlhLmNvbS8NCiAqIFVzZWQgSmFzb24ncyB3
b3JkaW5ncyBmb3IgY29tbWl0cyBhbmQgY292ZXIgbGV0dGVyLg0KICogUmVtb3ZlZCBJT01NVUZE
IHBhdGNoLg0KICogUmVuYW1lZCBkbWFfYnVmX2F0dGFjaG1lbnRfaXNfcmV2b2tlKCkgdG8gYmUg
ZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKCkuDQogKiBBZGRlZCBwYXRjaCB0byByZW1vdmUgQ09O
RklHX0RNQUJVRl9NT1ZFX05PVElGWS4NCiAqIEFkZGVkIFJldmlld2VkLWJ5IHRhZ3MuDQogKiBD
YWxsZWQgdG8gZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KCkgYWZ0ZXIgZG1hX2J1Zl9tb3ZlX25vdGlm
eSgpIGluIFZGSU8uDQogKiBBZGRlZCBkbWFfYnVmX2F0dGFjaF9yZXZvY2FibGUoKSBjaGVjayB0
byBWRklPIERNQUJVRiBhdHRhY2ggZnVuY3Rpb24uDQogKiBTbGlnaHRseSBjaGFuZ2VkIGNvbW1p
dCBtZXNzYWdlcy4NCnYyOiBodHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjAxMTgtZG1hYnVm
LXJldm9rZS12Mi0wLWEwM2JiMjdjMDg3NUBudmlkaWEuY29tDQogKiBDaGFuZ2VkIHNlcmllcyB0
byBkb2N1bWVudCB0aGUgcmV2b2tlIHNlbWFudGljcyBpbnN0ZWFkIG9mDQogICBpbXBsZW1lbnRp
bmcgaXQuDQp2MTogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYwMTExLWRtYWJ1Zi1yZXZv
a2UtdjEtMC1mYjRiY2M4YzI1OWJAbnZpZGlhLmNvbQ0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpUaGlz
IHNlcmllcyBpcyBiYXNlZCBvbiBsYXRlc3QgVkZJTyBmaXgsIHdoaWNoIHdpbGwgYmUgc2VudCB0
byBMaW51cw0KdmVyeSBzb29uLg0KDQpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAx
MjEtdmZpby1hZGQtcGluLXYxLTEtNGUwNDkxNmIxN2YxQG52aWRpYS5jb20vDQoNClRoYW5rcw0K
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KVGhpcyBzZXJpZXMgZG9jdW1lbnRzIGEgZG1hLWJ1ZiDigJxyZXZv
a2XigJ0gbWVjaGFuaXNtOiB0byBhbGxvdyBhIGRtYS1idWYNCmV4cG9ydGVyIHRvIGV4cGxpY2l0
bHkgaW52YWxpZGF0ZSAo4oCca2lsbOKAnSkgYSBzaGFyZWQgYnVmZmVyIGFmdGVyIGl0IGhhcw0K
YmVlbiBkaXN0cmlidXRlZCB0byBpbXBvcnRlcnMsIHNvIHRoYXQgZnVydGhlciBDUFUgYW5kIGRl
dmljZSBhY2Nlc3MgaXMNCnByZXZlbnRlZCBhbmQgaW1wb3J0ZXJzIHJlbGlhYmx5IG9ic2VydmUg
ZmFpbHVyZS4NCg0KVGhlIGNoYW5nZSBpbiB0aGlzIHNlcmllcyBpcyB0byBwcm9wZXJseSBkb2N1
bWVudCBhbmQgdXNlIGV4aXN0aW5nIGNvcmUNCuKAnHJldm9rZWTigJ0gc3RhdGUgb24gdGhlIGRt
YS1idWYgb2JqZWN0IGFuZCBhIGNvcnJlc3BvbmRpbmcgZXhwb3J0ZXItdHJpZ2dlcmVkDQpyZXZv
a2Ugb3BlcmF0aW9uLg0KDQpkbWEtYnVmIGhhcyBxdWlldGx5IGFsbG93ZWQgY2FsbGluZyBtb3Zl
X25vdGlmeSBvbiBwaW5uZWQgZG1hLWJ1ZnMsIGV2ZW4NCnRob3VnaCBsZWdhY3kgaW1wb3J0ZXJz
IHVzaW5nIGRtYV9idWZfYXR0YWNoKCkgd291bGQgc2ltcGx5IGlnbm9yZQ0KdGhlc2UgY2FsbHMu
DQoNClRoZSBpbnRlbnRpb24gd2FzIHRoYXQgbW92ZV9ub3RpZnkoKSB3b3VsZCB0ZWxsIHRoZSBp
bXBvcnRlciB0byBleHBlZGl0ZQ0KaXQncyB1bm1hcHBpbmcgcHJvY2VzcyBhbmQgb25jZSB0aGUg
aW1wb3J0ZXIgaXMgZnVsbHkgZmluaXNoZWQgd2l0aCBETUEgaXQNCndvdWxkIHVubWFwIHRoZSBk
bWEtYnVmIHdoaWNoIGZpbmFsbHkgc2lnbmFscyB0aGF0IHRoZSBpbXBvcnRlciBpcyBubw0KbG9u
Z2VyIGV2ZXIgZ29pbmcgdG8gdG91Y2ggdGhlIG1lbW9yeSBhZ2Fpbi4gSW1wb3J0ZXJzIHRoYXQg
dG91Y2ggcGFzdA0KdGhlaXIgdW5tYXAoKSBjYWxsIGNhbiB0cmlnZ2VyIElPTU1VIGVycm9ycywg
QUVSIGFuZCBiZXlvbmQsIGhvd2V2ZXINCnJlYWQtYW5kLWRpc2NhcmQgYWNjZXNzIGJldHdlZW4g
bW92ZV9ub3RpZnkoKSBhbmQgdW5tYXAgaXMgYWxsb3dlZC4NCg0KVGh1cywgd2UgY2FuIGRlZmlu
ZSB0aGUgZXhwb3J0ZXIncyByZXZva2Ugc2VxdWVuY2UgZm9yIHBpbm5lZCBkbWEtYnVmIGFzOg0K
DQoJZG1hX3Jlc3ZfbG9jayhkbWFidWYtPnJlc3YsIE5VTEwpOw0KCS8vIFByZXZlbnQgbmV3IG1h
cHBpbmdzIGZyb20gYmVpbmcgZXN0YWJsaXNoZWQNCglwcml2LT5yZXZva2VkID0gdHJ1ZTsNCg0K
CS8vIFRlbGwgYWxsIGltcG9ydGVycyB0byBldmVudHVhbGx5IHVubWFwDQoJZG1hX2J1Zl9pbnZh
bGlkYXRlX21hcHBpbmdzKGRtYWJ1Zik7DQoNCgkvLyBXYWl0IGZvciBhbnkgaW5wcm9ncmVzcyBm
ZW5jZXMgb24gdGhlIG9sZCBtYXBwaW5nDQoJZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KGRtYWJ1Zi0+
cmVzdiwNCgkJCSAgICAgIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQLCBmYWxzZSwNCgkJCSAgICAg
IE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsNCglkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2LCBO
VUxMKTsNCg0KCS8vIFdhaXQgZm9yIGFsbCBpbXBvcnRlcnMgdG8gY29tcGxldGUgdW5tYXANCgl3
YWl0X2Zvcl9jb21wbGV0aW9uKCZwcml2LT51bm1hcHBfY29tcCk7DQoNCkhvd2V2ZXIsIGRtYS1i
dWYgYWxzbyBzdXBwb3J0cyBpbXBvcnRlcnMgdGhhdCBkb24ndCBkbyBhbnl0aGluZyBvbg0KbW92
ZV9ub3RpZnkoKSwgYW5kIHdpbGwgbm90IHVubWFwIHRoZSBidWZmZXIgaW4gYm91bmRlZCB0aW1l
Lg0KDQpTaW5jZSBzdWNoIGltcG9ydGVycyB3b3VsZCBjYXVzZSB0aGUgYWJvdmUgc2VxdWVuY2Ug
dG8gaGFuZywgYSBuZXcNCm1lY2hhbmlzbSBpcyBuZWVkZWQgdG8gZGV0ZWN0IGluY29tcGF0aWJs
ZSBpbXBvcnRlcnMuDQoNCkludHJvZHVjZSBkbWFfYnVmX2F0dGFjaF9yZXZvY2FibGUoKSB3aGlj
aCBpZiB0cnVlIGluZGljYXRlcyB0aGUgYWJvdmUNCnNlcXVlbmNlIGlzIHNhZmUgdG8gdXNlIGFu
ZCB3aWxsIGNvbXBsZXRlIGluIGtlcm5lbC1vbmx5IGJvdW5kZWQgdGltZSBmb3INCnRoaXMgYXR0
YWNobWVudC4NCg0KVW5mb3J0dW5hdGVseSBkbWFfYnVmX2F0dGFjaF9yZXZvY2FibGUoKSBpcyBn
b2luZyB0byBmYWlsIGZvciB0aGUgcG9wdWxhcg0KUkRNQSBwaW5uZWQgaW1wb3J0ZXIsIHdoaWNo
IG1lYW5zIHdlIGNhbm5vdCBpbnRyb2R1Y2UgaXQgdG8gZXhpc3RpbmcNCnBsYWNlcyB1c2luZyBw
aW5uZWQgbW92ZV9ub3RpZnkoKSB3aXRob3V0IHBvdGVudGlhbGx5IGJyZWFraW5nIGV4aXN0aW5n
DQp1c2Vyc3BhY2UgZmxvd3MuDQoNCkV4aXN0aW5nIGV4cG9ydGVycyB0aGF0IG9ubHkgdHJpZ2dl
ciB0aGlzIGZsb3cgZm9yIFJBUyBlcnJvcnMgc2hvdWxkIG5vdA0KY2FsbCBkbWFfYnVmX2F0dGFj
aF9yZXZvY2FibGUoKSBhbmQgd2lsbCBzdWZmZXIgYW4gdW5ib3VuZGVkIGJsb2NrIG9uIHRoZQ0K
ZmluYWwgY29tcGxldGlvbiwgaG9waW5nIHRoYXQgdGhlIHVzZXJzcGFjZSB3aWxsIG5vdGljZSB0
aGUgUkFTIGFuZCBjbGVhbg0KdGhpbmdzIHVwLiBXaXRob3V0IHJldm9rZSBzdXBwb3J0IG9uIHRo
ZSBSRE1BIHBpbm5lZCBpbXBvcnRlcnMgaXQgZG9lc24ndA0Kc2VlbSBsaWtlIGFueSBvdGhlciBu
b24tYnJlYWtpbmcgb3B0aW9uIGlzIGN1cnJlbnRseSBwb3NzaWJsZS4NCg0KRm9yIG5ldyBleHBv
cnRlcnMsIGxpa2UgVkZJTyBhbmQgUkRNQSwgdGhhdCBoYXZlIHVzZXJzcGFjZSB0cmlnZ2VyZWQN
CnJldm9rZSBldmVudHMsIHRoZSB1bmJvdW5lZCBzbGVlcCB3b3VsZCBub3QgYmUgYWNjZXB0YWJs
ZS4gVGhleSBjYW4gY2FsbA0KZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKCkgYW5kIHdpbGwgbm90
IHdvcmsgd2l0aCB0aGUgUkRNQSBwaW5uZWQgaW1wb3J0ZXINCmZyb20gZGF5IDAsIHByZXZlbnRp
bmcgcmVncmVzc2lvbnMuDQoNCkluIHRoZSBwcm9jZXNzIGFkZCBkb2N1bWVudGF0aW9uIGV4cGxh
aW5pbmcgdGhlIGFib3ZlIGRldGFpbHMuDQoNClRoYW5rcw0KDQpTaWduZWQtb2ZmLWJ5OiBMZW9u
IFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KLS0tDQpMZW9uIFJvbWFub3Zza3kgKDgp
Og0KICAgICAgZG1hLWJ1ZjogUmVuYW1lIC5tb3ZlX25vdGlmeSgpIGNhbGxiYWNrIHRvIGEgY2xl
YXJlciBpZGVudGlmaWVyDQogICAgICBkbWEtYnVmOiBSZW5hbWUgZG1hX2J1Zl9tb3ZlX25vdGlm
eSgpIHRvIGRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncygpDQogICAgICBkbWEtYnVmOiBBbHdh
eXMgYnVpbGQgd2l0aCBETUFCVUZfTU9WRV9OT1RJRlkNCiAgICAgIHZmaW86IFdhaXQgZm9yIGRt
YS1idWYgaW52YWxpZGF0aW9uIHRvIGNvbXBsZXRlDQogICAgICBkbWEtYnVmOiBNYWtlIC5pbnZh
bGlkYXRlX21hcHBpbmcoKSB0cnVseSBvcHRpb25hbA0KICAgICAgZG1hLWJ1ZjogQWRkIGRtYV9i
dWZfYXR0YWNoX3Jldm9jYWJsZSgpDQogICAgICB2ZmlvOiBQZXJtaXQgVkZJTyB0byB3b3JrIHdp
dGggcGlubmVkIGltcG9ydGVycw0KICAgICAgaW9tbXVmZDogQWRkIGRtYV9idWZfcGluKCkNCg0K
IGRyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgfCAxMiAtLS0tLQ0K
IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAgfCA2OSArKysrKysr
KysrKysrKysrKysrLS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1h
X2J1Zi5jIHwgMTQgKystLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2Jq
ZWN0LmMgIHwgIDIgKy0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9LY29uZmlnICAgICAg
ICAgIHwgIDIgKy0NCiBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfcHJpbWUuYyAgICAg
IHwgIDIgKy0NCiBkcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jICAgICAgIHwg
IDcgKystDQogZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMgICAgICAgICAgICAgICAgICB8ICAy
ICstDQogZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYyAgICAgICAgICAgICB8IDE0ICsr
LS0tDQogZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYyAgICAgICB8IDEzIC0t
LS0tDQogZHJpdmVycy9pbmZpbmliYW5kL2h3L21seDUvbXIuYyAgICAgICAgICAgICB8ICAyICst
DQogZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMgICAgICAgICAgICAgICB8IDExICsrKy0N
CiBkcml2ZXJzL2lvbW11L2lvbW11ZmQvc2VsZnRlc3QuYyAgICAgICAgICAgIHwgIDIgKy0NCiBk
cml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jICAgICAgICAgIHwgODQgKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAg
ICAgICAgICAgIHwgMTcgKysrLS0tDQogMTUgZmlsZXMgY2hhbmdlZCwgMTU3IGluc2VydGlvbnMo
KyksIDk2IGRlbGV0aW9ucygtKQ0KLS0tDQpiYXNlLWNvbW1pdDogNjFjZWFmMjM2MTE1ZjIwZjRm
ZGQ3Y2Y2MGY4ODNhZGExMDYzMzQ5YQ0KY2hhbmdlLWlkOiAyMDI1MTIyMS1kbWFidWYtcmV2b2tl
LWI5MGVmMTZlNDIzNg0KDQpCZXN0IHJlZ2FyZHMsDQotLSAgDQpMZW9uIFJvbWFub3Zza3kgPGxl
b25yb0BudmlkaWEuY29tPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
