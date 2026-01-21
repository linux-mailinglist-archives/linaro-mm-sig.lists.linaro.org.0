Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIB/JVTVcGkOaAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:32:04 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 33530578E7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:32:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45C7940175
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 13:31:57 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by lists.linaro.org (Postfix) with ESMTPS id 94AC53F6FF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 13:31:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=j3xh5Y8s;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.181 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-5014e1312c6so32017371cf.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 05:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769002311; x=1769607111; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aX294P4TliS2B0BrPhrC1yfpgvWNBReUGID/aL6TSBE=;
        b=j3xh5Y8sKWbJKDXFbKRorfVa4AZCNWOpRPfnU5+xykvFS57KQr6viaMD5EDJDXA2OM
         mNdzRPVqOMrmg4llodFuyZqRPNabR5Z4YC+/FVfWFR4jllrPwvbiVa4QzIyiJM00MmOB
         /wvlaLZCS0S2/Bi7SsuCikkpSybfdZHyLYIBZmnxs/60+uZWKijeYiwPkaZbjKgbCMY6
         7AzsC7z/6jRENqSluuZoLqOBwAz5naYGcU8x6PHDC23fVNBeT1fTtGj0/+ynWJRIngSE
         bKRKbnHSl6OxlimOnIf1ywl2JVxofhLvzVdxQ3OSFIHY69e7yf5mc1RG6p+341dYA+Ph
         OOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769002311; x=1769607111;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aX294P4TliS2B0BrPhrC1yfpgvWNBReUGID/aL6TSBE=;
        b=seJngBpmGypmRBFXDG0zsBly43T+acmadh0a0Ase0UAXSk3CLybRXW6dYxht4tdGI5
         eFj+lyrG9OBFose7d55qj++Ptq/Lz19zOMdNEg0g5eEcalODWuOxYUCRVBHhzlcfpqy/
         4Burs5D97PgwMcNjbzp6SLXkc1HbLT0ziFpMZClJFozSM8BbCM4CPwp/akGrgGXsv6iI
         R42GoqJAvDuw1MQQSquMWwy+HXKhezMs93GEJbCYdurxtdpS+Uk7oxucUdBvYdfdjd5z
         Aihh+EkCAFFoCFkbMFyL/uMMPBwDuOWWvIYDSoWhtKk1a0SOOv5U/DZaX8iP4hjqTJFF
         16GA==
X-Forwarded-Encrypted: i=1; AJvYcCXIBJjPXi3bAG/mQF08BDUSU5Hl8So2NE3GZbIvq/kvWM1oFj00o8hxkscH6VfGmRKG4NfX4jwPhHsusgZY@lists.linaro.org
X-Gm-Message-State: AOJu0Yyd4SgHUmxrZhpr1PVoztM7EpJXtrDWPv+VMB5fb8LOlJfFIcCo
	xtXaLuV7yb2+nmjLG2NEEF24W7WodTh4OunfCK4Jyx0/uj2KXgb1LeWm0o/Djh5PmL8=
X-Gm-Gg: AZuq6aIMbLWwLP6CpIKRBIo6VlHgwBLPxeluiQzj8JUtHpHu2/xVRXcBYqEvBEyPRnv
	D99i+L9IjLZPjDDeFctXJntcShXykNNjw/m9CcUcAiaXHbgDWlsIm1t09V2hBTYcjbFotRfHEfW
	YZKyf+mEGS6IWj9jbVDiumgbgvEMf7gpRSflkHmnKt42MdIpS1ghOm+kv3GJQO8BayapKGQQEdh
	bDTYmajWKZyUlNAurJVshXc7CtCu/DNlIx02dHmUX5Sc1O/h8HJX4syztrO0rrXstA5FvCvs/wC
	PavEyrw+zMe8v3RPtz5KWObgMz5LHDxUivP3BPvKkmUbLzpkJw+PGYxO+JS+ej+Cro85LbKQpVP
	PlxJ6Do/Ry50o6hj1mIixoKNpjCbH73GsCKISH9rEfF69BHqRXGqc3CN+YELP6+Sx2ZLBtP6M1O
	gXQCPufg8fFTUO8JmYh6puWcwGEHbCZmnMJg/np2bprYxbuTwow8myQRuy/1ODYNcSDVcvdgAjE
	EEujA==
X-Received: by 2002:a05:622a:1aa1:b0:4ee:2200:409e with SMTP id d75a77b69052e-502d82772a6mr67009251cf.4.1769002308002;
        Wed, 21 Jan 2026 05:31:48 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1f1c1c4sm108692291cf.33.2026.01.21.05.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 05:31:47 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viYJG-00000006Dbm-2x5v;
	Wed, 21 Jan 2026 09:31:46 -0400
Date: Wed, 21 Jan 2026 09:31:46 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260121133146.GY961572@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: RCBBDHKCJZNTXGPAVGF4NQVXRBFLCZOW
X-Message-ID-Hash: RCBBDHKCJZNTXGPAVGF4NQVXRBFLCZOW
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RCBBDHKCJZNTXGPAVGF4NQVXRBFLCZOW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:rdns,lists.linaro.org:helo,amd.com:email,ziepe.ca:mid,linaro.org:email]
X-Rspamd-Queue-Id: 33530578E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBKYW4gMjEsIDIwMjYgYXQgMTA6MjA6NTFBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8yMC8yNiAxNTowNywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+
IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gDQo+ID4gZG1h
LWJ1ZiBpbnZhbGlkYXRpb24gaXMgcGVyZm9ybWVkIGFzeW5jaHJvbm91c2x5IGJ5IGhhcmR3YXJl
LCBzbyBWRklPIG11c3QNCj4gPiB3YWl0IHVudGlsIGFsbCBhZmZlY3RlZCBvYmplY3RzIGhhdmUg
YmVlbiBmdWxseSBpbnZhbGlkYXRlZC4NCj4gPiANCj4gPiBGaXhlczogNWQ3NDc4MWViYzg2ICgi
dmZpby9wY2k6IEFkZCBkbWEtYnVmIGV4cG9ydCBzdXBwb3J0IGZvciBNTUlPIHJlZ2lvbnMiKQ0K
PiA+IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+
IA0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KPiANCj4gUGxlYXNlIGFsc28ga2VlcCBpbiBtaW5kIHRoYXQgdGhlIHdoaWxlIHRoaXMg
d2FpdCBmb3IgYWxsIGZlbmNlcyBmb3INCj4gY29ycmVjdG5lc3MgeW91IGFsc28gbmVlZCB0byBr
ZWVwIHRoZSBtYXBwaW5nIHZhbGlkIHVudGlsDQo+IGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCgp
IHdhcyBjYWxsZWQuDQoNCkNhbiB5b3UgZWxhYm9yYXRlIG9uIHRoaXMgbW9yZT8NCg0KSSB0aGlu
ayB3aGF0IHdlIHdhbnQgZm9yIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpIGlzIHRoZSBzdHJv
bmcNCmd1YXJlbnRlZSB0aGF0IHRoZSBpbXBvcnRlciBzdG9wcyBkb2luZyBhbGwgYWNjZXNzIHRv
IHRoZSBtZW1vcnkgb25jZQ0KdGhpcyBzZXF1ZW5jZSBpcyBjb21wbGV0ZWQgYW5kIHRoZSBleHBv
cnRlciBjYW4gcmVseSBvbiBpdC4gSSBkb24ndA0KdGhpbmsgdGhpcyB3b3JrcyBhbnkgb3RoZXIg
d2F5Lg0KDQpUaGlzIGlzIGFscmVhZHkgdHJ1ZSBmb3IgZHluYW1pYyBtb3ZlIGNhcGFibGUgaW1w
b3J0ZXJzLCByaWdodD8NCg0KRm9yIHRoZSBub24tcmV2b2NhYmxlIGltcG9ydGVycyBJIGNhbiBz
ZWUgdGhlIGludmFsaWRhdGUgc2VxdWVuY2UgaXMNCm1vcmUgb2YgYW4gYWR2aXNvcnkgdGhpbmcg
YW5kIHlvdSBjYW4ndCBrbm93IHRoZSBhY2Nlc3MgaXMgZ29uZSB1bnRpbA0KdGhlIG1hcCBpcyB1
bmRvbmUuDQoNCj4gSW4gb3RoZXIgd29yZHMgeW91IGNhbiBvbmx5IHJlZGlyZWN0IHRoZSBETUEt
YWRkcmVzc2VzIHByZXZpb3VzbHkNCj4gZ2l2ZW4gb3V0IGludG8gbmlydmFuYSAob3IgYSBkdW1t
eSBtZW1vcnkgb3Igc2ltaWxhciksIGJ1dCB5b3Ugc3RpbGwNCj4gbmVlZCB0byBhdm9pZCByZS11
c2luZyB0aGVtIGZvciBzb21ldGhpbmcgZWxzZS4NCg0KRG9lcyBhbnkgZHJpdmVyIGRvIHRoaXM/
IElmIHlvdSB1bmxvYWQvcmVsb2FkIGEgR1BVIGRyaXZlciBpdCBpcw0KZ29pbmcgdG8gcmUtdXNl
IHRoZSBhZGRyZXNzZXMgaGFuZGVkIG91dD8NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
