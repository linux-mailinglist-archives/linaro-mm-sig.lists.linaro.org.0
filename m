Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BAAD3B590
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 19:23:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DACEC3F9D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 18:23:12 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 89C1A3F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 18:23:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="kODgE/7I";
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C747843845;
	Mon, 19 Jan 2026 18:23:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 104A7C116C6;
	Mon, 19 Jan 2026 18:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768846985;
	bh=Lii9Wo3zMBgNZu8BfSOY2bf+6SIZLbGpUqMsnL7Mo1g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kODgE/7I98Q5Jmc8h+EJtQ/PsgbfKxiuG7+i/OKTqySamVeiXJ1ev5n9Tu8e8+7Am
	 eWcBTByTaCuS0pN4zKkZls5MedNPAn4I+Hsbq1SmcbRlCuZl8IS6k6KUcZhOQ5cwPq
	 QEvQx8PMi6vRf/Cyws5p8kXrMKU7fcqSObgUcH6YasVT8Do8FUt//3CHGrsQYSZI57
	 JjtDLmYAxiJIjWc5xqiuIHK7ya1LGuV3tOBOZ43uv2pzg/gzqVH+Fg7JPomEkrSv71
	 pD+WzkHxHEeR8S/rk6YdY1H6mMFPgde202sJs+pg6vR5YElq7bO8BTz55Zfg/qynqM
	 P7D/uGSD1I3oQ==
Date: Mon, 19 Jan 2026 20:23:00 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20260119182300.GO13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-3-a03bb27c0875@nvidia.com>
 <20260119165951.GI961572@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260119165951.GI961572@ziepe.ca>
X-Rspamd-Queue-Id: 89C1A3F6FF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[31];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JEZTQZPCOCIGLWDH5RNHUAXPGWTUKMFV
X-Message-ID-Hash: JEZTQZPCOCIGLWDH5RNHUAXPGWTUKMFV
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@
 lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/4] iommufd: Require DMABUF revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JEZTQZPCOCIGLWDH5RNHUAXPGWTUKMFV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMTI6NTk6NTFQTSAtMDQwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOg0KPiBPbiBTdW4sIEphbiAxOCwgMjAyNiBhdCAwMjowODo0N1BNICswMjAwLCBMZW9u
IFJvbWFub3Zza3kgd3JvdGU6DQo+ID4gRnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZp
ZGlhLmNvbT4NCj4gPiANCj4gPiBJT01NVUZEIGRvZXMgbm90IHN1cHBvcnQgcGFnZSBmYXVsdCBo
YW5kbGluZywgYW5kIGFmdGVyIGEgY2FsbCB0bw0KPiA+IC5pbnZhbGlkYXRlX21hcHBpbmdzKCkg
YWxsIG1hcHBpbmdzIGJlY29tZSBpbnZhbGlkLiBFbnN1cmUgdGhhdA0KPiA+IHRoZSBJT01NVUZE
IERNQUJVRiBpbXBvcnRlciBpcyBib3VuZCB0byBhIHJldm9rZeKAkWF3YXJlIERNQUJVRiBleHBv
cnRlcg0KPiA+IChmb3IgZXhhbXBsZSwgVkZJTykuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTog
TGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9pb21tdS9pb21tdWZkL3BhZ2VzLmMgfCA5ICsrKysrKysrLQ0KPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jIGIvZHJpdmVycy9pb21tdS9pb21tdWZkL3Bh
Z2VzLmMNCj4gPiBpbmRleCA3NmY5MDBmYTE2ODcuLmE1ZWIyYmM0ZWY0OCAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvaW9t
bXUvaW9tbXVmZC9wYWdlcy5jDQo+ID4gQEAgLTE1MDEsMTYgKzE1MDEsMjIgQEAgc3RhdGljIGlu
dCBpb3B0X21hcF9kbWFidWYoc3RydWN0IGlvbW11ZmRfY3R4ICppY3R4LCBzdHJ1Y3QgaW9wdF9w
YWdlcyAqcGFnZXMsDQo+ID4gIAkJbXV0ZXhfdW5sb2NrKCZwYWdlcy0+bXV0ZXgpOw0KPiA+ICAJ
fQ0KPiA+ICANCj4gPiAtCXJjID0gc3ltX3ZmaW9fcGNpX2RtYV9idWZfaW9tbXVmZF9tYXAoYXR0
YWNoLCAmcGFnZXMtPmRtYWJ1Zi5waHlzKTsNCj4gPiArCXJjID0gZG1hX2J1Zl9waW4oYXR0YWNo
KTsNCj4gPiAgCWlmIChyYykNCj4gPiAgCQlnb3RvIGVycl9kZXRhY2g7DQo+ID4gIA0KPiA+ICsJ
cmMgPSBzeW1fdmZpb19wY2lfZG1hX2J1Zl9pb21tdWZkX21hcChhdHRhY2gsICZwYWdlcy0+ZG1h
YnVmLnBoeXMpOw0KPiA+ICsJaWYgKHJjKQ0KPiA+ICsJCWdvdG8gZXJyX3VucGluOw0KPiA+ICsN
Cj4gPiAgCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOw0KPiA+ICANCj4gPiAgCS8qIE9u
IHN1Y2Nlc3MgaW9wdF9yZWxlYXNlX3BhZ2VzKCkgd2lsbCBkZXRhY2ggYW5kIHB1dCB0aGUgZG1h
YnVmLiAqLw0KPiA+ICAJcGFnZXMtPmRtYWJ1Zi5hdHRhY2ggPSBhdHRhY2g7DQo+ID4gIAlyZXR1
cm4gMDsNCj4gDQo+IERvbid0IHdlIG5lZWQgYW4gZXhwbGljaXQgdW5waW4gYWZ0ZXIgdW5tYXBw
aW5nPw0KDQpZZXMsIGJ1dCB0aGlzIHBhdGNoIGlzIGdvaW5nIHRvIGJlIGRyb3BwZWQgaW4gdjMg
YmVjYXVzZSBvZiB0aGlzDQpzdWdnZXN0aW9uLg0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
L2EzOTdmZjFlLTYxNWYtNDg3My05OGE5LTk0MGY5YzE2Zjg1Y0BhbWQuY29tDQoNClRoYW5rcw0K
DQoNCj4gDQo+IEphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
