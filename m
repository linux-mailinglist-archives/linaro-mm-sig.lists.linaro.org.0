Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DjcFe+KhGl43QMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Feb 2026 13:19:59 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB67F2571
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Feb 2026 13:19:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B00A93ED23
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Feb 2026 12:19:57 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id F2D8A3F799
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Feb 2026 12:19:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=i8xsIjDR;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 12B6660128;
	Thu,  5 Feb 2026 12:19:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24EA5C16AAE;
	Thu,  5 Feb 2026 12:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770293989;
	bh=jDVAIy0un6bKwi7cwnpyXpEFdjN35m4ddNYoOutYhhg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i8xsIjDRjR/7Rs5Naa0Zy2HxOGqc5prWf5cwXS/H3radpAqh/avw9U+IxguyWKA8y
	 huFln+oJd1vu7ldLn6LNYkQ6RJxjWsoJ5eS3hT0tMYh4dmMUdxahfCEdqFj5VXkqpT
	 9ddi8EzI4CBmF7r3/HIXROK8jlpHjEAdgQe9URyey+9Vwp7WQHQV8s4nvLC46FZ6a2
	 c9HMUyfFhI1lUXLb8Xb4BXpe77RU5uB+OQv6MQF6rYrWjvvFziYpPIuIRa15haC6F5
	 k9QrwVZPhPwCYG1uDdQYVzTA2Sbfz33PJKtJRXrvJXZ7pvFO9um7Ecx+7L4LAFSQPe
	 OpIywz7bjpfXA==
Date: Thu, 5 Feb 2026 14:19:45 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260205121945.GC12824@unreal>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260131-dmabuf-revoke-v7-7-463d956bd527@nvidia.com>
 <fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
 <20260204095659.5a983af2@shazbot.org>
 <ac33ad1a-330c-4ab5-bb98-4a4dedccf0da@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac33ad1a-330c-4ab5-bb98-4a4dedccf0da@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: 3OVVUT57N6NXW7JQEYTPCWFAK67D76MB
X-Message-ID-Hash: 3OVVUT57N6NXW7JQEYTPCWFAK67D76MB
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex@shazbot.org>, Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-
 mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3OVVUT57N6NXW7JQEYTPCWFAK67D76MB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[shazbot.org,ffwll.ch,intel.com,linaro.org,amd.com,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ziepe.ca,8bytes.org,arm.com,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,pages.freedesktop.org:url,linaro.org:email]
X-Rspamd-Queue-Id: BCB67F2571
X-Rspamd-Action: no action

T24gVGh1LCBGZWIgMDUsIDIwMjYgYXQgMTA6NDM6MDhBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMi80LzI2IDE3OjU2LCBBbGV4IFdpbGxpYW1zb24gd3JvdGU6DQo+IC4u
Lg0KPiA+Pg0KPiA+PiBUaGlzIGNodW5rIGhlcmUgZG9lc24ndCB3YW50IHRvIGFwcGx5IHRvIGRy
bS1taXNjLW5leHQsIG15IGVkdWNhdGVkDQo+ID4+IGd1ZXNzIGlzIHRoYXQgdGhlIHBhdGNoIGFk
ZGluZyB0aG9zZSBsaW5lcyBpcyBtaXNzaW5nIGluIHRoYXQgdHJlZS4NCj4gPj4NCj4gPj4gSG93
IHNob3VsZCB3ZSBoYW5kbGUgdGhhdD8gUGF0Y2hlcyAxLTMgaGF2ZSBhbHJlYWR5IGJlZW4gcHVz
aGVkIHRvDQo+ID4+IGRybS1taXNjLW5leHQgYW5kIEkgd291bGQgcmF0aGVyIGxpa2UgdG8gcHVz
aCBwYXRjaGVzIDQtNiB0aHJvdWdoDQo+ID4+IHRoYXQgYnJhbmNoIGFzIHdlbGwuDQo+ID4+DQo+
ID4+IEkgY2FuIHJlcXVlc3QgYSBiYWNrbWVyZ2UgZnJvbSB0aGUgZHJtLW1pc2MtbmV4dCBtYWlu
dGFpbmVycywgYnV0DQo+ID4+IHRoZW4gd2UgY2xlYXJseSBkb24ndCBnZXQgdGhhdCB1cHN0cmVh
bSB0aGlzIHdlZWsuDQo+ID4gDQo+ID4gSG1tLCBkcm0tbmV4dCBhbHJlYWR5IGhhcyBhIGJhY2tt
ZXJnZSB1cCB0byB2Ni4xOS1yYzcsIHRoZSBwYXRjaCBoZXJlIGlzDQo+ID4gYmFzZWQgb24gYSBj
b21taXQgbWVyZ2VkIGluIHJjOC4gIFRoZSB0YWcgZm9yIHRoYXQgY2hhbmdlIHdhcyBiYXNlZCBv
bg0KPiA+IHJjNi4gIEl0IGNhbiBiZSBmb3VuZCBoZXJlOg0KPiA+IA0KPiA+IGh0dHBzOi8vZ2l0
aHViLmNvbS9hd2lsbGlhbS9saW51eC12ZmlvLmdpdCB0YWdzL3ZmaW8tdjYuMTktcmM4DQo+ID4g
DQo+ID4gQXMgdGhlIHNhbWUgdGFnIExpbnVzIG1lcmdlZCBpbjoNCj4gPiANCj4gPiAxZjk3ZDlk
Y2Y1MzYgKCJNZXJnZSB0YWcgJ3ZmaW8tdjYuMTktcmM4JyBvZiBodHRwczovL2dpdGh1Yi5jb20v
YXdpbGxpYW0vbGludXgtdmZpbyIpDQo+ID4gDQo+ID4gZHJtLW1pc2MtbmV4dCBvbmx5IHNlZW1z
IHRvIGJlIGJhc2VkIG9uIHY2LjE5LXJjMSB0aG91Z2gsIHNvIEkgZG9uJ3QNCj4gPiBrbm93IHRo
YXQgYW55IG9mIHRoYXQgaGVscHMuICBUaGFua3MsDQo+IA0KPiBUaGFua3MgQWxleCwgdGhhdCB3
YXMgaW5kZWVkIGhlbHBmdWwuDQo+IA0KPiBTaW1vbmEsIEphbmkgYW5kIEx1Y2FzIGNhbiB3ZSBk
byBhIGJhY2ttZXJnZSBvZiA2LjE5LXJjOCBpbnRvIGRybS1taXNjLW5leHQgb3IgZG9lcyB0aGF0
IGNvbXBsZXRlbHkgYnJlYWtzIHRoZSBmbG93Pw0KPiANCj4gSWYgaXQncyBub3QgcG9zc2libGUg
aW1tZWRpYXRlbHkgdGhlbiBJIHdpbGwgZG8gdGhlIG1lcmdlIG5leHQgd2VlayBvciBzbyB3aGVu
IHRoZSBmaW5hbCA2LjE5IGlzIG91dCBhbmQgZXZlcnl0aGluZyBtZXJnZWQgYmFjayBpbnRvIHRo
ZSBkcm0tbWlzYyB0cmVlcy4NCg0KQ2hyaXN0aWFuLA0KDQpZb3UgZG9uJ3QgbmVlZCBhbnkgYmFj
a21lcmdlLCBTSEEtMSB2ZXJzaW9uIG9mIHZmaW8tdjYuMTktcmM4IHRhZyBpcyB0aGUNCnNhbWUg
YXMgaW4gTGludXMncyB0cmVlLCBzbyB0aGUgZmxvdyBpczoNCg0K4p6cICBrZXJuZWwgZ2l0Oih3
aXAvbGVvbi1mb3ItbmV4dCkgZ2l0IHJlbW90ZSB1cGRhdGUgZHJtLW1pc2MNCkZldGNoaW5nIGRy
bS1taXNjDQpyZW1vdGU6IEVudW1lcmF0aW5nIG9iamVjdHM6IDMyNzY4LCBkb25lLg0KcmVtb3Rl
OiBDb3VudGluZyBvYmplY3RzOiAxMDAlICgyMTYyMC8yMTYyMCksIGRvbmUuDQpyZW1vdGU6IENv
bXByZXNzaW5nIG9iamVjdHM6IDEwMCUgKDQ2MjAvNDYyMCksIGRvbmUuDQpyZW1vdGU6IFRvdGFs
IDE4MTU0IChkZWx0YSAxNDc4OSksIHJldXNlZCAxNjc1MSAoZGVsdGEgMTM1MTkpLCBwYWNrLXJl
dXNlZCAwDQpSZWNlaXZpbmcgb2JqZWN0czogMTAwJSAoMTgxNTQvMTgxNTQpLCA0LjMzIE1pQiB8
IDQuMzAgTWlCL3MsIGRvbmUuDQpSZXNvbHZpbmcgZGVsdGFzOiAxMDAlICgxNDc4OS8xNDc4OSks
IGNvbXBsZXRlZCB3aXRoIDE1NjQgbG9jYWwgb2JqZWN0cy4NCj5Gcm9tIGh0dHBzOi8vYW5vbmdp
dC5mcmVlZGVza3RvcC5vcmcvZ2l0L2RybS9kcm0tbWlzYw0KICogW25ldyBicmFuY2hdICAgICAg
ICAgICAgICAgIGRybS1taXNjLWZpeGVzICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIC0+IGRybS1taXNjL2RybS1taXNjLWZpeGVzDQogKiBbbmV3IGJyYW5jaF0gICAg
ICAgICAgICAgICAgZHJtLW1pc2MtbmV4dCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgLT4gZHJtLW1pc2MvZHJtLW1pc2MtbmV4dA0KLi4uDQrinpwgIGtlcm5lbCBn
aXQ6KHdpcC9sZW9uLWZvci1uZXh0KSBnaXQgY2hlY2tvdXQgLWIgZHJtLW1pc2MtbmV4dCBkcm0t
bWlzYy9kcm0tbWlzYy1uZXh0DQpTd2l0Y2hlZCB0byBhIG5ldyBicmFuY2ggJ2RybS1taXNjLW5l
eHQnDQpIRUFEIGlzIG5vdyBhdCAyYmNiYzcwNmRmYTAgZG1hLWJ1ZjogYWRkIGRtYV9mZW5jZV93
YXNfaW5pdGlhbGl6ZWQgZnVuY3Rpb24gdjINCuKenCAga2VybmVsIGdpdDooZHJtLW1pc2MtbmV4
dCkgZ2l0IG1lcmdlIHZmaW8tdjYuMTktcmM4IA0KQXV0by1tZXJnaW5nIGRyaXZlcnMvdmZpby9w
Y2kvdmZpb19wY2lfZG1hYnVmLmMNCk1lcmdlIG1hZGUgYnkgdGhlICdvcnQnIHN0cmF0ZWd5Lg0K
IGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMgfCAxMiArKysrKysrKysrKysNCiAx
IGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQ0K4p6cICBrZXJuZWwgZ2l0Oihkcm0tbWlz
Yy1uZXh0KSBnaXQgbCAtMg0KZjZlNDQxOTA1MGNlIChIRUFEIC0+IGRybS1taXNjLW5leHQpIE1l
cmdlIHRhZyAndmZpby12Ni4xOS1yYzgnIGludG8gZHJtLW1pc2MtbmV4dA0KMmJjYmM3MDZkZmEw
IChkcm0tbWlzYy9kcm0tbWlzYy1uZXh0LCBkcm0tbWlzYy9IRUFEKSBkbWEtYnVmOiBhZGQgZG1h
X2ZlbmNlX3dhc19pbml0aWFsaXplZCBmdW5jdGlvbiB2Mg0KDQpBbmQgYWZ0ZXIgdGhhdCB5b3Ug
Y2FuIGFwcGx5IHJlc3Qgb2YgZG1hLWJ1ZiBwYXRjaGVzLg0KDQpUaGFua3MNCg0KPiANCj4gTGVv
biB0aGUgZmxvdyBvZiBwYXRjaGVzIHRocm91Z2ggdGhlIERSTSBzdWJzeXN0ZW0gaXMgZG9jdW1l
bnRlZCBoZXJlOiBodHRwczovL2RybS5wYWdlcy5mcmVlZGVza3RvcC5vcmcvbWFpbnRhaW5lci10
b29scy9yZXBvc2l0b3JpZXMvZHJtLW1pc2MuaHRtbCNtZXJnZS10aW1lbGluZQ0KPiANCj4gVGhh
bmtzLA0KPiBDaHJpc3RpYW4uDQo+IA0KPiA+IA0KPiA+IEFsZXgNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
