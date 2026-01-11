Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BC6D0E999
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 11 Jan 2026 11:37:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E020A401B8
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 11 Jan 2026 10:37:52 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 74CC2401C7
	for <linaro-mm-sig@lists.linaro.org>; Sun, 11 Jan 2026 10:37:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=kBXsSPR0;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DD75B43933;
	Sun, 11 Jan 2026 10:37:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B037C4CEF7;
	Sun, 11 Jan 2026 10:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768127847;
	bh=dePt43SNBgAbHvocqy1bmZTj4P+RAF7SlV/MxoRNsvQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kBXsSPR0TxXcGmrSTr1m2AYwDDmE5EHlWBhoS8FOTEyEkDrfKeG1oePyXFIC+Wpll
	 kIOV5FuNrm3n0q14QlyOewKPUeY21W3nCSQ1o157RduoUPTdENc0XMS/pWyHM+FRdf
	 yt9EWt2EAR+WzRQplROgnyjUlBLIy9a6ojxgPnKV0EL1veMqA01ApSxMp0M90xowF6
	 3XRMBeWyJoPps7imeBn1XfEL3Vw+sqqspNynLaalStLo0jpu2VPy1gFxeSN67f/sKn
	 y0Zo4qqUpsUJiRdVJK4mE0nA8G8T0j20PNRE/3bRqIwcNEheuxFj9X49mAlEA2Ous1
	 iZvftUZwfKNCw==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Alex Williamson <alex@shazbot.org>,
	Kevin Tian <kevin.tian@intel.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>
Date: Sun, 11 Jan 2026 12:37:10 +0200
Message-ID: <20260111-dmabuf-revoke-v1-3-fb4bcc8c259b@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-a6db3
X-Rspamd-Queue-Id: 74CC2401C7
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[nvidia.com:email,nvidia.com:mid];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TMJ6QJT2MVIA3FS3THH7VEO5SDD3F26E
X-Message-ID-Hash: TMJ6QJT2MVIA3FS3THH7VEO5SDD3F26E
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/4] iommufd: Require DMABUF revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TMJ6QJT2MVIA3FS3THH7VEO5SDD3F26E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KSU9NTVVGRCBkb2Vz
IG5vdCBzdXBwb3J0IHBhZ2UgZmF1bHQgaGFuZGxpbmcsIGFuZCBhZnRlciBhIGNhbGwgdG8NCi5t
b3ZlX25vdGlmeSgpIGFsbCBtYXBwaW5ncyBiZWNvbWUgaW52YWxpZC4gRW5zdXJlIHRoYXQgdGhl
IElPTU1VRkQNCkRNQUJVRiBpbXBvcnRlciBpcyBib3VuZCB0byBhIHJldm9rZeKAkWF3YXJlIERN
QUJVRiBleHBvcnRlciAoZm9yIGV4YW1wbGUsDQpWRklPKS4NCg0KU2lnbmVkLW9mZi1ieTogTGVv
biBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvaW9tbXUvaW9t
bXVmZC9wYWdlcy5jIHwgMiArLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMg
Yi9kcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYw0KaW5kZXggZGJlNTFlY2I5YTIwLi5hMjMz
ZGVmNzFiZTAgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYw0KKysr
IGIvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCkBAIC0xNDUxLDcgKzE0NTEsNyBAQCBz
dGF0aWMgdm9pZCBpb3B0X3Jldm9rZV9ub3RpZnkoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAq
YXR0YWNoKQ0KIA0KIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIGlvcHRfZG1hYnVm
X2F0dGFjaF9yZXZva2Vfb3BzID0gew0KIAkuYWxsb3dfcGVlcjJwZWVyID0gdHJ1ZSwNCi0JLm1v
dmVfbm90aWZ5ID0gaW9wdF9yZXZva2Vfbm90aWZ5LA0KKwkucmV2b2tlX25vdGlmeSA9IGlvcHRf
cmV2b2tlX25vdGlmeSwNCiB9Ow0KIA0KIC8qDQoNCi0tIA0KMi41Mi4wDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
