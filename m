Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C76DD394C1
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 13:09:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E76E3F7FD
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 12:09:47 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 5A21E3F70D
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jan 2026 12:09:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=b57lGzkE;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9FED8444A1;
	Sun, 18 Jan 2026 12:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E27A2C2BC86;
	Sun, 18 Jan 2026 12:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768738149;
	bh=lFp92L2u8Fi3C1r4wz7ICZZY29W6l9NNfEn6EJZj7GA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=b57lGzkEObf4t2IQTf/DJYle2Vi+wmkenWL8JiZcUXMFG32RI5QLPPJvEQbZNmUVu
	 tVm9SQkuRLXsV+VARTyTJ0ctKEAh36t9OF36xOHzMKHdzrqQIUN+wCKowPjw2OfZCq
	 uTMmw9GjLJOlRA/x9vlNTo9600EoOlZ5fJuR5yabUCBsAqvyrwoWDAdpO0SdPcxQzn
	 fmRvtiPmspxW0vLun5hT89R8Sl29pf9lU45i5p0t62erSJena939KfeGaNSbhd6Kjo
	 PB+o9YyRlIiDI8/OKCEyXgL3nGXjyaFi1GkzNHDkMORYewY4EEZiBeSpWeQYfoARox
	 VmHDCcvdgPMdg==
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
Date: Sun, 18 Jan 2026 14:08:46 +0200
Message-ID: <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-a6db3
X-Rspamd-Queue-Id: 5A21E3F70D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[nvidia.com:email,nvidia.com:mid];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SKTOOAJZGUQOZHKOOEGGPEMHRSGGN5QZ
X-Message-ID-Hash: SKTOOAJZGUQOZHKOOEGGPEMHRSGGN5QZ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 2/4] dma-buf: Document revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SKTOOAJZGUQOZHKOOEGGPEMHRSGGN5QZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KRG9jdW1lbnQgYSBE
TUEtYnVmIHJldm9rZSBtZWNoYW5pc20gdGhhdCBhbGxvd3MgYW4gZXhwb3J0ZXIgdG8gZXhwbGlj
aXRseQ0KaW52YWxpZGF0ZSAoImtpbGwiKSBhIHNoYXJlZCBidWZmZXIgYWZ0ZXIgaXQgaGFzIGJl
ZW4gaGFuZGVkIG91dCB0bw0KaW1wb3J0ZXJzLiBPbmNlIHJldm9rZWQsIGFsbCBmdXJ0aGVyIENQ
VSBhbmQgZGV2aWNlIGFjY2VzcyBpcyBibG9ja2VkLCBhbmQNCmltcG9ydGVycyBjb25zaXN0ZW50
bHkgb2JzZXJ2ZSBmYWlsdXJlLg0KDQpUaGlzIHJlcXVpcmVzIGJvdGggaW1wb3J0ZXJzIGFuZCBl
eHBvcnRlcnMgdG8gaG9ub3IgdGhlIHJldm9rZSBjb250cmFjdC4NCg0KRm9yIGltcG9ydGVycywg
dGhpcyBtZWFucyBpbXBsZW1lbnRpbmcgLmludmFsaWRhdGVfbWFwcGluZ3MoKSBhbmQgY2FsbGlu
Zw0KZG1hX2J1Zl9waW4oKSBhZnRlciB0aGUgRE1B4oCRYnVmIGlzIGF0dGFjaGVkIHRvIHZlcmlm
eSB0aGUgZXhwb3J0ZXLigJlzIHN1cHBvcnQNCmZvciByZXZvY2F0aW9uLg0KDQpGb3IgZXhwb3J0
ZXJzLCB0aGlzIG1lYW5zIGltcGxlbWVudGluZyB0aGUgLnBpbigpIGNhbGxiYWNrLCB3aGljaCBj
aGVja3MNCnRoZSBETUHigJFidWYgYXR0YWNobWVudCBmb3IgYSB2YWxpZCByZXZva2UgaW1wbGVt
ZW50YXRpb24uDQoNClNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRp
YS5jb20+DQotLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCB8IDE5ICsrKysrKysrKysrKysr
KysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KaW5kZXgg
MWIzOTc2MzVjNzkzLi5lMGJjMGI3MTE5ZjUgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2Rt
YS1idWYuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCkBAIC01NzksNiArNTc5LDI1
IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBkbWFfYnVmX2lzX2R5bmFtaWMoc3RydWN0IGRtYV9idWYg
KmRtYWJ1ZikNCiAJcmV0dXJuICEhZG1hYnVmLT5vcHMtPnBpbjsNCiB9DQogDQorLyoqDQorICog
ZG1hX2J1Zl9hdHRhY2htZW50X2lzX3Jldm9rZSAtIGNoZWNrIGlmIGEgRE1BLWJ1ZiBpbXBvcnRl
ciBpbXBsZW1lbnRzDQorICogcmV2b2tlIHNlbWFudGljcy4NCisgKiBAYXR0YWNoOiB0aGUgRE1B
LWJ1ZiBhdHRhY2htZW50IHRvIGNoZWNrDQorICoNCisgKiBSZXR1cm5zIHRydWUgaWYgRE1BLWJ1
ZiBpbXBvcnRlciBob25vcnMgcmV2b2tlIHNlbWFudGljcywgd2hpY2ggaXMNCisgKiBuZWdvdGlh
dGVkIHdpdGggdGhlIGV4cG9ydGVyLCBieSBtYWtpbmcgc3VyZSB0aGF0IGltcG9ydGVyIGltcGxl
bWVudHMNCisgKiAuaW52YWxpZGF0ZV9tYXBwaW5ncygpIGNhbGxiYWNrIGFuZCBjYWxscyB0byBk
bWFfYnVmX3BpbigpIGFmdGVyDQorICogRE1BLWJ1ZiBhdHRhY2guDQorICovDQorc3RhdGljIGlu
bGluZSBib29sDQorZG1hX2J1Zl9hdHRhY2htZW50X2lzX3Jldm9rZShzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gpDQorew0KKwlyZXR1cm4gSVNfRU5BQkxFRChDT05GSUdfRE1BQlVG
X01PVkVfTk9USUZZKSAmJg0KKwkgICAgICAgZG1hX2J1Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1h
YnVmKSAmJg0KKwkgICAgICAgKGF0dGFjaC0+aW1wb3J0ZXJfb3BzICYmDQorCQlhdHRhY2gtPmlt
cG9ydGVyX29wcy0+aW52YWxpZGF0ZV9tYXBwaW5ncyk7DQorfQ0KKw0KIHN0cnVjdCBkbWFfYnVm
X2F0dGFjaG1lbnQgKmRtYV9idWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQogCQkJ
CQkgIHN0cnVjdCBkZXZpY2UgKmRldik7DQogc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqDQoN
Ci0tIA0KMi41Mi4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
