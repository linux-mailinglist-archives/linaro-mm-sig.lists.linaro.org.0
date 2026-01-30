Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QM7lEJD4e2n0JgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 01:17:20 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C6948B5D58
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 01:17:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F8663F75A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 00:17:18 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by lists.linaro.org (Postfix) with ESMTPS id 1D8F33F721
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 00:17:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=mAi6c4nT;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.179 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-50146483bf9so16970441cf.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jan 2026 16:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769732232; x=1770337032; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JQnCcQDZjp9U0R1Q7JCyNDeekOxxS8phMo1p2crcsis=;
        b=mAi6c4nTu2Q9PLbBBo/h8FoeZWdmGlvOHI7vrVk9pN3q2mCe3oJTBrKTR73izSwMpT
         JxH3k6wTd8JgHONgJ3vmDvxUXjyRgG+VRn/HqglMJYEIZpdCAhRNa4pclJfJEgosVsto
         gVFWPYLKBUG0iqzJOIaKAYmFNtMJufy9VbaJbHX/9E4jJfevMJ5J6+V7SGldxirPLqiS
         JEqGlL5dyJNtx8E8sWgSa6CpxjTR5X/Resh3bS6L0maFI7rmP5S5UtzUMoBaM/28+iTP
         AtUDWUHXxUWS111YlK4HttV0pJ2mehTejFgnU9kOCx6WX8bepJWwiEAbiKAE72/ZP1eL
         dPAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769732232; x=1770337032;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JQnCcQDZjp9U0R1Q7JCyNDeekOxxS8phMo1p2crcsis=;
        b=dahM3VdSVVX0LYrP8Zs2gedMJapVEWDUJ/ioODvAghGMNtgewjIfKHPV6fVMwPflrr
         1FuxTbwW4e0XcHanSLbTLpaeIsOSBJdluPnupvFAcBiBBpZ0mhU5J4G9F64pp1syMVZk
         QAhFPRCFNuyRv/O4VCQfgBcezna1kBHm2z/2Cw+jL0LjPG0nGZbEuJSH1557Wqkn0FYJ
         ObbRE5QR7ovKZIvtpO25fb8LuCTFCMNKEOs4dot5kqvfxdn/f3Cxow3QDMLFojOKCul6
         kyDA3Ti6G5vhxUPAFkLdJWFlTvAQDYL0Bxy4p6Yf+gYdBuZUw2x9UWdWWhl+qmyOVR6o
         SIwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUp2xTwD/bLRW21/efZDbFUxr+w0oWnpfwLsVVrdtrBzuxnokg6hRw/tUhjGaQESkOXQUUXlcalA99H1SLe@lists.linaro.org
X-Gm-Message-State: AOJu0Yz4QCwXJNBj1clg0DN+BnBJm4fEaWrND6H8rDTrLC/yuM3kYoZN
	Q4SgJpdiZec5vfe5bk+MgHV176LaIO+ZFRlbumkyIsYIVeVPFbCa7/F1ZeqNuxxxyr8=
X-Gm-Gg: AZuq6aLJs9BwwjU1mylfRjRTrhx60wmKrBTjo7mO6Uqc/qVkbWqEaD4ffswGxuXDGLQ
	dL4KkuFRMMeZpPcnPsvn+HyaiAPAPqUUIaUOFgit6nNtoSg3nY0zGX1MMPWrIpNt74HE8+jtdg7
	pu7CLykiGMSg4cz9Iq62axjFD+IwJbs2gXSiAv4VR2Tbx2nmI/sLGMpVv3pXSD5otdEsOUDcGgO
	2TY6d1W0Xe3VHCZJyP7tZGA+P1MZjJBf/HPhVCMFZ7KcArGferj7vEKp0F5FFcDBaeJTtDBRVgm
	5180SzJvRqYps/8zLrPuxSWCKIlcGjvWwjiI8xhqTfRzCOsd99AVLayxZGto2+ttl9sLSdWJeSo
	J/46XX+O/ZmMME12/yh4SCRAR8/YU+mG35k6BO6HCMCM12gh7tqY4KWATpwVxw0VOC+C4RyCZlm
	rJ/AmuSvQ0npMLVUGBdwPuehGe7WuZpmN6DBIhhybyfebWg/z8h/+GP0BJ/TAPI1zmkNK3qEckd
	vrQ6g==
X-Received: by 2002:ac8:5781:0:b0:4f3:5f7b:cc1d with SMTP id d75a77b69052e-505d21846b4mr19549181cf.34.1769732232444;
        Thu, 29 Jan 2026 16:17:12 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50337cc19d7sm45008611cf.35.2026.01.29.16.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 16:17:11 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vlcCE-0000000AQZD-13C4;
	Thu, 29 Jan 2026 20:17:10 -0400
Date: Thu, 29 Jan 2026 20:17:10 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260130001710.GB2328995@ziepe.ca>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-8-f98fca917e96@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260124-dmabuf-revoke-v5-8-f98fca917e96@nvidia.com>
X-Spamd-Bar: ---
Message-ID-Hash: 3WIRNVWRA7FRW73HY2SQLJAVLMQELGXF
X-Message-ID-Hash: 3WIRNVWRA7FRW73HY2SQLJAVLMQELGXF
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists
 .linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 8/8] iommufd: Add dma_buf_pin()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3WIRNVWRA7FRW73HY2SQLJAVLMQELGXF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.954];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,ziepe.ca:mid]
X-Rspamd-Queue-Id: C6948B5D58
X-Rspamd-Action: no action

T24gU2F0LCBKYW4gMjQsIDIwMjYgYXQgMDk6MTQ6MjBQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiAN
Cj4gSU9NTVVGRCByZWxpZXMgb24gYSBwcml2YXRlIHByb3RvY29sIHdpdGggVkZJTywgYW5kIHRo
aXMgYWx3YXlzIG9wZXJhdGVkDQo+IGluIHBpbm5lZCBtb2RlLg0KPiANCj4gTm93IHRoYXQgVkZJ
TyBjYW4gc3VwcG9ydCBwaW5uZWQgaW1wb3J0ZXJzIHVwZGF0ZSBJT01NVUZEIHRvIGludm9rZSB0
aGUNCj4gbm9ybWFsIGRtYS1idWYgZmxvdyB0byByZXF1ZXN0IHBpbi4NCj4gDQo+IFRoaXMgaXNu
J3QgZW5vdWdoIHRvIGFsbG93IElPTU1VRkQgdG8gd29yayB3aXRoIG90aGVyIGV4cG9ydGVycywg
aXQgc3RpbGwNCj4gbmVlZHMgYSB3YXkgdG8gZ2V0IHRoZSBwaHlzaWNhbCBhZGRyZXNzIGxpc3Qg
d2hpY2ggaXMgYW5vdGhlciBzZXJpZXMuDQo+IA0KPiBJT01NVUZEIHN1cHBvcnRzIHRoZSBkZWZp
bmVkIHJldm9rZSBzZW1hbnRpY3MuIEl0IGltbWVkaWF0ZWx5IHN0b3BzIGFuZA0KPiBmZW5jZXMg
YWNjZXNzIHRvIHRoZSBtZW1vcnkgaW5zaWRlIGl0J3MgaW52YWxpZGF0ZV9tYXBwaW5ncygpIGNh
bGxiYWNrLA0KPiBhbmQgaXQgY3VycmVudGx5IGRvZXNuJ3QgdXNlIHNjYXR0ZXJsaXN0cyBzbyBk
b2Vzbid0IGNhbGwgbWFwL3VubWFwIGF0DQo+IGFsbC4NCj4gDQo+IEl0IGlzIGV4cGVjdGVkIHRo
YXQgYSBmdXR1cmUgcmV2aXNpb24gY2FuIHN5bmNocm9ub3VzbHkgY2FsbCB1bm1hcCBmcm9tDQo+
IHRoZSBtb3ZlX25vdGlmeSBjYWxsYmFjayBhcyB3ZWxsLg0KPiANCj4gQWNrZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTog
TGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2lv
bW11L2lvbW11ZmQvcGFnZXMuYyB8IDkgKysrKysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNClJldmlld2VkLWJ5OiBKYXNvbiBHdW50aG9y
cGUgPGpnZ0BudmlkaWEuY29tPg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
