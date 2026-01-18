Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F72DD394B2
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 13:09:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED3693FDB0
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 12:09:05 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 01FDB3F70D
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jan 2026 12:09:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=aG4uK31r;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 50EC843A5A;
	Sun, 18 Jan 2026 12:08:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92637C116D0;
	Sun, 18 Jan 2026 12:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768738139;
	bh=6bmUHSFT3Q7/+tXPCxCaiihzWsFX2kmrdZwwrHRlKhY=;
	h=From:To:Cc:Subject:Date:From;
	b=aG4uK31r0MqVjWD9XffPW7en2hhZsO688W532e1q8M7HRFYm320SE5m73+UGstOff
	 0HrYZuKbh0toNswE4Xbm1P0QHSQKJblqIbIyQy0jq+i0SdliWxS4tc1gq5JCChkVGi
	 Riax/uALSvMxc5oVBHWULvwd01DMvBqLuON9emQT4OVyyB5VdFxK+Ox4k/LswzZTkG
	 Ah6VK2r5SR451CP05ufhWEs0FXamSBFN+a8yO057BxF8fnGNz5hAvSNoSnggXxVhx0
	 5vL8oOMNUSVxROdcIeYu7DAAiE4l0/WXHLT4AilQNGqLbTAZ2WoezH1KLPDu6Lmimm
	 EDaAW2lmOJo2A==
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
	Alex Williamson <alex@shazbot.org>
Date: Sun, 18 Jan 2026 14:08:44 +0200
Message-ID: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20251221-dmabuf-revoke-b90ef16e4236
X-Mailer: b4 0.15-dev-a6db3
X-Rspamd-Queue-Id: 01FDB3F70D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: FK44VE7M7JE4UTEIX4WWA7ORT7DGYD4O
X-Message-ID-Hash: FK44VE7M7JE4UTEIX4WWA7ORT7DGYD4O
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FK44VE7M7JE4UTEIX4WWA7ORT7DGYD4O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

Q2hhbmdlbG9nOg0NCnYyOg0NCiAqIENoYW5nZWQgc2VyaWVzIHRvIGRvY3VtZW50IHRoZSByZXZv
a2Ugc2VtYW50aWNzIGluc3RlYWQgb2YNDQogICBpbXBsZW1lbnRpbmcgaXQuDQ0KdjE6IGh0dHBz
Oi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDExMS1kbWFidWYtcmV2b2tlLXYxLTAtZmI0YmNjOGMy
NTliQG52aWRpYS5jb20NDQoNDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQ0KVGhpcyBzZXJpZXMgZG9jdW1l
bnRzIGEgZG1hLWJ1ZiDigJxyZXZva2XigJ0gbWVjaGFuaXNtOiB0byBhbGxvdyBhIGRtYS1idWYN
DQpleHBvcnRlciB0byBleHBsaWNpdGx5IGludmFsaWRhdGUgKOKAnGtpbGzigJ0pIGEgc2hhcmVk
IGJ1ZmZlciBhZnRlciBpdCBoYXMNDQpiZWVuIGRpc3RyaWJ1dGVkIHRvIGltcG9ydGVycywgc28g
dGhhdCBmdXJ0aGVyIENQVSBhbmQgZGV2aWNlIGFjY2VzcyBpcw0NCnByZXZlbnRlZCBhbmQgaW1w
b3J0ZXJzIHJlbGlhYmx5IG9ic2VydmUgZmFpbHVyZS4NDQoNDQpUaGUgY2hhbmdlIGluIHRoaXMg
c2VyaWVzIGlzIHRvIHByb3Blcmx5IGRvY3VtZW50IGFuZCB1c2UgZXhpc3RpbmcgY29yZQ0NCuKA
nHJldm9rZWTigJ0gc3RhdGUgb24gdGhlIGRtYS1idWYgb2JqZWN0IGFuZCBhIGNvcnJlc3BvbmRp
bmcgZXhwb3J0ZXItdHJpZ2dlcmVkDQ0KcmV2b2tlIG9wZXJhdGlvbi4gT25jZSBhIGRtYS1idWYg
aXMgcmV2b2tlZCwgbmV3IGFjY2VzcyBwYXRocyBhcmUgYmxvY2tlZCBzbw0NCnRoYXQgYXR0ZW1w
dHMgdG8gRE1BLW1hcCwgdm1hcCwgb3IgbW1hcCB0aGUgYnVmZmVyIGZhaWwgaW4gYSBjb25zaXN0
ZW50IHdheS4NDQoNDQpUaGFua3MNDQoNDQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3Jn
DQ0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNDQpDYzogbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnDQ0KQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNDQpD
YzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNDQpDYzogdmlydHVhbGl6YXRpb25AbGlz
dHMubGludXguZGV2DQ0KQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0NCkNjOiBs
aW51eC1yZG1hQHZnZXIua2VybmVsLm9yZw0NCkNjOiBpb21tdUBsaXN0cy5saW51eC5kZXYNDQpD
Yzoga3ZtQHZnZXIua2VybmVsLm9yZw0NClRvOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBs
aW5hcm8ub3JnPg0NClRvOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQ0KVG86IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4NDQpUbzog
RGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NDQpUbzogU2ltb25hIFZldHRlciA8c2lt
b25hQGZmd2xsLmNoPg0NClRvOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4NDQpU
bzogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NDQpUbzog
R3VyY2hldGFuIFNpbmdoIDxndXJjaGV0YW5zaW5naEBjaHJvbWl1bS5vcmc+DQ0KVG86IENoaWEt
SSBXdSA8b2x2YWZmZUBnbWFpbC5jb20+DQ0KVG86IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQ0KVG86IE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4NDQpUbzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+
DQ0KVG86IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0NClRvOiBU
aG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+DQ0KVG86
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NDQpUbzogSmFzb24gR3VudGhv
cnBlIDxqZ2dAemllcGUuY2E+DQ0KVG86IExlb24gUm9tYW5vdnNreSA8bGVvbkBrZXJuZWwub3Jn
Pg0NClRvOiBLZXZpbiBUaWFuIDxrZXZpbi50aWFuQGludGVsLmNvbT4NDQpUbzogSm9lcmcgUm9l
ZGVsIDxqb3JvQDhieXRlcy5vcmc+DQ0KVG86IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+
DQ0KVG86IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+DQ0KVG86IEFsZXggV2ls
bGlhbXNvbiA8YWxleEBzaGF6Ym90Lm9yZz4NDQoNDQotLS0NDQpMZW9uIFJvbWFub3Zza3kgKDQp
Og0NCiAgICAgIGRtYS1idWY6IFJlbmFtZSAubW92ZV9ub3RpZnkoKSBjYWxsYmFjayB0byBhIGNs
ZWFyZXIgaWRlbnRpZmllcg0NCiAgICAgIGRtYS1idWY6IERvY3VtZW50IHJldm9rZSBzZW1hbnRp
Y3MNDQogICAgICBpb21tdWZkOiBSZXF1aXJlIERNQUJVRiByZXZva2Ugc2VtYW50aWNzDQ0KICAg
ICAgdmZpbzogQWRkIHBpbm5lZCBpbnRlcmZhY2UgdG8gcGVyZm9ybSByZXZva2Ugc2VtYW50aWNz
DQ0KDQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAgfCAgNiAr
KystLS0NDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8ICA0
ICsrLS0NDQogZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3ByaW1lLmMgICAgICB8ICAy
ICstDQ0KIGRyaXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmMgICAgICAgfCAgNiAr
KystLS0NDQogZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYyAgICAgICAgICAgICB8ICAy
ICstDQ0KIGRyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMgICAgICAgfCAgNCAr
Ky0tDQ0KIGRyaXZlcnMvaW5maW5pYmFuZC9ody9tbHg1L21yLmMgICAgICAgICAgICAgfCAgMiAr
LQ0NCiBkcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYyAgICAgICAgICAgICAgIHwgMTEgKysr
KysrKysrLS0NDQogZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYyAgICAgICAgICB8
IDE2ICsrKysrKysrKysrKysrKysNDQogaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICAgICAgICAg
ICAgICAgICAgICB8IDI1ICsrKysrKysrKysrKysrKysrKysrKystLS0NDQogMTAgZmlsZXMgY2hh
bmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pDQ0KLS0tDQ0KYmFzZS1jb21t
aXQ6IDlhY2U0NzUzYTUyMDJiMDIxOTFkNTRlOWZkZjdmOWUzZDAyYjg1ZWINDQpjaGFuZ2UtaWQ6
IDIwMjUxMjIxLWRtYWJ1Zi1yZXZva2UtYjkwZWYxNmU0MjM2DQ0KDQ0KQmVzdCByZWdhcmRzLA0N
Ci0tICANDQpMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0NCg0NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
