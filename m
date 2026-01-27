Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAuWCEl+eGkFqQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 09:58:49 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7649161E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 09:58:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 629723F7FC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 08:58:47 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 3C0D43F726
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jan 2026 08:58:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bAB6hl7o;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 773E7600AD;
	Tue, 27 Jan 2026 08:58:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78ED1C16AAE;
	Tue, 27 Jan 2026 08:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769504321;
	bh=m9sbIqU1XdlQnXm2tN68nmeagKR1Wrmm8XlTuHQ4gaQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bAB6hl7oG53Z5NaRzppvV3aOmPWOsOx1U7WgjZAo/MByByWmhGqS4/O2kekR1OMyx
	 mQTdVm9JsHILgUhUwCbN+yCY9zG/a3nAgGHREqz1o1Pu9NxUGN+qD4JhJvYQSHJ2h7
	 DV0HRAarEmmVN4jkgeMBb2Li/CSIYgQAKa9BuAwLgoIuh6wIe8Ni0EAOjTUz2TSSgV
	 IoN120Zlz1QJqEpCVMMH0v6BbyexGT8q2SrPZ/0x/7ClhwrYYGyc62I432RUDP+jZB
	 H67MwBVZ42sQtwFhWN9msXincpCyPWj5NNsEcIwurDVEKKOJDyyuPND7LvAPGvSJuT
	 T2lnuSKLEB1pQ==
Date: Tue, 27 Jan 2026 10:58:35 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Pranjal Shrivastava <praan@google.com>
Message-ID: <20260127085835.GQ13967@unreal>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <aXfUZcSEr9N18o6w@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXfUZcSEr9N18o6w@google.com>
X-Spamd-Bar: ---
Message-ID-Hash: SSY75L4BDRKVON7SSXH3HJYD6TVI7XWO
X-Message-ID-Hash: SSY75L4BDRKVON7SSXH3HJYD6TVI7XWO
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@list
 s.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SSY75L4BDRKVON7SSXH3HJYD6TVI7XWO/>
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
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,list,lists.linaro.org,lists.freedesktop.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.938];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email]
X-Rspamd-Queue-Id: 9F7649161E
X-Rspamd-Action: no action

T24gTW9uLCBKYW4gMjYsIDIwMjYgYXQgMDg6NTM6NTdQTSArMDAwMCwgUHJhbmphbCBTaHJpdmFz
dGF2YSB3cm90ZToNCj4gT24gU2F0LCBKYW4gMjQsIDIwMjYgYXQgMDk6MTQ6MTZQTSArMDIwMCwg
TGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJv
QG52aWRpYS5jb20+DQo+ID4gDQo+ID4gZG1hLWJ1ZiBpbnZhbGlkYXRpb24gaXMgaGFuZGxlZCBh
c3luY2hyb25vdXNseSBieSB0aGUgaGFyZHdhcmUsIHNvIFZGSU8NCj4gPiBtdXN0IHdhaXQgdW50
aWwgYWxsIGFmZmVjdGVkIG9iamVjdHMgaGF2ZSBiZWVuIGZ1bGx5IGludmFsaWRhdGVkLg0KPiA+
IA0KPiA+IEluIGFkZGl0aW9uLCB0aGUgZG1hLWJ1ZiBleHBvcnRlciBpcyBleHBlY3RpbmcgdGhh
dCBhbGwgaW1wb3J0ZXJzIHVubWFwIGFueQ0KPiA+IGJ1ZmZlcnMgdGhleSBwcmV2aW91c2x5IG1h
cHBlZC4NCj4gPiANCj4gPiBGaXhlczogNWQ3NDc4MWViYzg2ICgidmZpby9wY2k6IEFkZCBkbWEt
YnVmIGV4cG9ydCBzdXBwb3J0IGZvciBNTUlPIHJlZ2lvbnMiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6
IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZl
cnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMgfCA3MSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNjggaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkNCg0KPC4uLj4NCg0KPiA+IEBAIC0zMzMsNyArMzU5LDM3IEBAIHZvaWQg
dmZpb19wY2lfZG1hX2J1Zl9tb3ZlKHN0cnVjdCB2ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldiwg
Ym9vbCByZXZva2VkKQ0KPiA+ICAJCQlkbWFfcmVzdl9sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdiwg
TlVMTCk7DQo+ID4gIAkJCXByaXYtPnJldm9rZWQgPSByZXZva2VkOw0KPiA+ICAJCQlkbWFfYnVm
X2ludmFsaWRhdGVfbWFwcGluZ3MocHJpdi0+ZG1hYnVmKTsNCj4gPiArCQkJZG1hX3Jlc3Zfd2Fp
dF90aW1lb3V0KHByaXYtPmRtYWJ1Zi0+cmVzdiwNCj4gPiArCQkJCQkgICAgICBETUFfUkVTVl9V
U0FHRV9CT09LS0VFUCwgZmFsc2UsDQo+ID4gKwkJCQkJICAgICAgTUFYX1NDSEVEVUxFX1RJTUVP
VVQpOw0KPiA+ICAJCQlkbWFfcmVzdl91bmxvY2socHJpdi0+ZG1hYnVmLT5yZXN2KTsNCj4gPiAr
CQkJaWYgKHJldm9rZWQpIHsNCj4gPiArCQkJCWtyZWZfcHV0KCZwcml2LT5rcmVmLCB2ZmlvX3Bj
aV9kbWFfYnVmX2RvbmUpOw0KPiA+ICsJCQkJLyogTGV0J3Mgd2FpdCB0aWxsIGFsbCBETUEgdW5t
YXAgYXJlIGNvbXBsZXRlZC4gKi8NCj4gPiArCQkJCXdhaXQgPSB3YWl0X2Zvcl9jb21wbGV0aW9u
X3RpbWVvdXQoDQo+ID4gKwkJCQkJJnByaXYtPmNvbXAsIHNlY3NfdG9famlmZmllcygxKSk7DQo+
IA0KPiBJcyB0aGUgMS1zZWNvbmQgY29uc3RhbnQgc3VmZmljaWVudCBmb3IgYWxsIGhhcmR3YXJl
LCBvciBzaG91bGQgdGhlIA0KPiBpbnZhbGlkYXRlX21hcHBpbmdzKCkgY29udHJhY3QgcmVxdWly
ZSB0aGUgY2FsbGJhY2sgdG8gYmxvY2sgdW50aWwgDQo+IHNwZWN1bGF0aXZlIHJlYWRzIGFyZSBz
dHJpY3RseSBmZW5jZWQ/IEknbSB3b25kZXJpbmcgYWJvdXQgYSBjYXNlIHdoZXJlDQo+IGEgZGV2
aWNlJ3MgZmlybXdhcmUgaGFzIGEgaGlnaCByZXNwb25zZSBsYXRlbmN5LCBwZXJoYXBzIGR1ZSB0
byBpbnRlcm5hbA0KPiBtYW5hZ2VtZW50IHRhc2tzIGxpa2UgZXJyb3IgcmVjb3Zlcnkgb3IgdGhl
cm1hbCBhbmQgaXQgZXhjZWVkcyB0aGUgMXMgDQo+IHRpbWVvdXQuIA0KPiANCj4gSWYgdGhlIGRl
dmljZSBpcyBpbiB0aGUgbWlkZGxlIG9mIGEgbGFyZ2UgRE1BIGJ1cnN0IGFuZCB0aGUgZmlybXdh
cmUgaXMNCj4gc2xvdyB0byBmbHVzaCB0aGUgaW50ZXJuYWwgcGlwZWxpbmVzIHRvIGEgZnVsbHkg
InF1aWVzY2VkIg0KPiByZWFkLWFuZC1kaXNjYXJkIHN0YXRlLCByZWNsYWltaW5nIHRoZSBtZW1v
cnkgYXQgZXhhY3RseSAxLjAwMSBzZWNvbmRzDQo+IHJpc2tzIHRyaWdnZXJpbmcgcGxhdGZvcm0t
bGV2ZWwgZmF1bHRzLi4NCj4gDQo+IFNpbmNlIHRoZSB3ZW4gZXhwbGljaXRseSBwZXJtaXQgdGhl
c2Ugc3BlY3VsYXRpdmUgcmVhZHMgdW50aWwgdW5tYXAgaXMNCj4gY29tcGxldGUsIHJlbHlpbmcg
b24gYSBoYXJkY29kZWQgdGltZW91dCBpbiB0aGUgZXhwb3J0ZXIgc2VlbXMgdG8gDQo+IGludHJv
ZHVjZSBhIGhhcmR3YXJlLWRlcGVuZGVudCByYWNlIGNvbmRpdGlvbiB0aGF0IGNvdWxkIGNvbXBy
b21pc2UNCj4gc3lzdGVtIHN0YWJpbGl0eSB2aWEgSU9NTVUgZXJyb3JzIG9yIEFFUiBmYXVsdHMu
IA0KPiANCj4gU2hvdWxkIHRoZSBpbXBvcnRlciBpbnN0ZWFkIGJlIHJlcXVpcmVkIHRvIGd1YXJh
bnRlZSB0aGF0IGFsbCANCj4gc3BlY3VsYXRpdmUgYWNjZXNzIGhhcyBjZWFzZWQgYmVmb3JlIHRo
ZSBpbnZhbGlkYXRpb24gY2FsbCByZXR1cm5zPw0KDQpJdCBpcyBndWFyYW50ZWVkIGJ5IHRoZSBk
bWFfcmVzdl93YWl0X3RpbWVvdXQoKSBjYWxsIGFib3ZlLiBUaGF0IGNhbGwgZW5zdXJlcw0KdGhh
dCB0aGUgaGFyZHdhcmUgaGFzIGNvbXBsZXRlZCBhbGwgcGVuZGluZyBvcGVyYXRpb25zLiBUaGUg
MeKAkXNlY29uZCBkZWxheSBpcw0KbWVhbnQgdG8gY2F0Y2ggY2FzZXMgd2hlcmUgYW4gaW4ta2Vy
bmVsIERNQSB1bm1hcCBjYWxsIGlzIG1pc3NpbmcsIHdoaWNoIHNob3VsZA0Kbm90IHRyaWdnZXIg
YW55IERNQSBhY3Rpdml0eSBhdCB0aGF0IHBvaW50Lg0KDQpTbyB5ZXMsIG9uZSBzZWNvbmQgaXMg
bW9yZSB0aGFuIHN1ZmZpY2llbnQuDQoNClRoYW5rcw0KDQo+IA0KPiBUaGFua3MNCj4gUHJhYW4N
Cj4gDQo+ID4gKwkJCQkvKg0KPiA+ICsJCQkJICogSWYgeW91IHNlZSB0aGlzIFdBUk5fT04sIGl0
IG1lYW5zIHRoYXQNCj4gPiArCQkJCSAqIGltcG9ydGVyIGRpZG4ndCBjYWxsIHVubWFwIGluIHJl
c3BvbnNlIHRvDQo+ID4gKwkJCQkgKiBkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3MoKSB3aGlj
aCBpcyBub3QNCj4gPiArCQkJCSAqIGFsbG93ZWQuDQo+ID4gKwkJCQkgKi8NCj4gPiArCQkJCVdB
Uk4oIXdhaXQsDQo+ID4gKwkJCQkgICAgICJUaW1lZCBvdXQgd2FpdGluZyBmb3IgRE1BQlVGIHVu
bWFwLCBpbXBvcnRlciBoYXMgYSBicm9rZW4gaW52YWxpZGF0ZV9tYXBwaW5nKCkiKTsNCj4gPiAr
CQkJfSBlbHNlIHsNCj4gPiArCQkJCS8qDQo+ID4gKwkJCQkgKiBLcmVmIGlzIGluaXRpYWxpemUg
YWdhaW4sIGJlY2F1c2Ugd2hlbiByZXZva2UNCj4gPiArCQkJCSAqIHdhcyBwZXJmb3JtZWQgdGhl
IHJlZmVyZW5jZSBjb3VudGVyIHdhcyBkZWNyZWFzZWQNCj4gPiArCQkJCSAqIHRvIHplcm8gdG8g
dHJpZ2dlciBjb21wbGV0aW9uLg0KPiA+ICsJCQkJICovDQo+ID4gKwkJCQlrcmVmX2luaXQoJnBy
aXYtPmtyZWYpOw0KPiA+ICsJCQkJLyoNCj4gPiArCQkJCSAqIFRoZXJlIGlzIG5vIG5lZWQgdG8g
d2FpdCBhcyBubyBtYXBwaW5nIHdhcw0KPiA+ICsJCQkJICogcGVyZm9ybWVkIHdoZW4gdGhlIHBy
ZXZpb3VzIHN0YXR1cyB3YXMNCj4gPiArCQkJCSAqIHByaXYtPnJldm9rZWQgPT0gdHJ1ZS4NCj4g
PiArCQkJCSAqLw0KPiA+ICsJCQkJcmVpbml0X2NvbXBsZXRpb24oJnByaXYtPmNvbXApOw0KPiA+
ICsJCQl9DQo+ID4gIAkJfQ0KPiA+ICAJCWZwdXQocHJpdi0+ZG1hYnVmLT5maWxlKTsNCj4gPiAg
CX0NCj4gPiBAQCAtMzQ2LDYgKzQwMiw4IEBAIHZvaWQgdmZpb19wY2lfZG1hX2J1Zl9jbGVhbnVw
KHN0cnVjdCB2ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldikNCj4gPiAgDQo+ID4gIAlkb3duX3dy
aXRlKCZ2ZGV2LT5tZW1vcnlfbG9jayk7DQo+ID4gIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUo
cHJpdiwgdG1wLCAmdmRldi0+ZG1hYnVmcywgZG1hYnVmc19lbG0pIHsNCj4gPiArCQl1bnNpZ25l
ZCBsb25nIHdhaXQ7DQo+ID4gKw0KPiA+ICAJCWlmICghZ2V0X2ZpbGVfYWN0aXZlKCZwcml2LT5k
bWFidWYtPmZpbGUpKQ0KPiA+ICAJCQljb250aW51ZTsNCj4gPiAgDQo+ID4gQEAgLTM1NCw3ICs0
MTIsMTQgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX2NsZWFudXAoc3RydWN0IHZmaW9fcGNpX2Nv
cmVfZGV2aWNlICp2ZGV2KQ0KPiA+ICAJCXByaXYtPnZkZXYgPSBOVUxMOw0KPiA+ICAJCXByaXYt
PnJldm9rZWQgPSB0cnVlOw0KPiA+ICAJCWRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncyhwcml2
LT5kbWFidWYpOw0KPiA+ICsJCWRtYV9yZXN2X3dhaXRfdGltZW91dChwcml2LT5kbWFidWYtPnJl
c3YsDQo+ID4gKwkJCQkgICAgICBETUFfUkVTVl9VU0FHRV9CT09LS0VFUCwgZmFsc2UsDQo+ID4g
KwkJCQkgICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7DQo+ID4gIAkJZG1hX3Jlc3ZfdW5sb2Nr
KHByaXYtPmRtYWJ1Zi0+cmVzdik7DQo+ID4gKwkJa3JlZl9wdXQoJnByaXYtPmtyZWYsIHZmaW9f
cGNpX2RtYV9idWZfZG9uZSk7DQo+ID4gKwkJd2FpdCA9IHdhaXRfZm9yX2NvbXBsZXRpb25fdGlt
ZW91dCgmcHJpdi0+Y29tcCwNCj4gPiArCQkJCQkJICAgc2Vjc190b19qaWZmaWVzKDEpKTsNCj4g
PiArCQlXQVJOX09OKCF3YWl0KTsNCj4gPiAgCQl2ZmlvX2RldmljZV9wdXRfcmVnaXN0cmF0aW9u
KCZ2ZGV2LT52ZGV2KTsNCj4gPiAgCQlmcHV0KHByaXYtPmRtYWJ1Zi0+ZmlsZSk7DQo+ID4gIAl9
DQo+ID4gDQo+ID4gLS0gDQo+ID4gMi41Mi4wDQo+ID4gDQo+ID4gDQo+IA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
