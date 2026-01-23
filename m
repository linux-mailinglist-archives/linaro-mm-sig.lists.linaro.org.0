Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6P77Jm2ic2lqxgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 17:31:41 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E9478870
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 17:31:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 119DC401B8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 16:31:40 +0000 (UTC)
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	by lists.linaro.org (Postfix) with ESMTPS id F36593F76F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 16:31:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=PaFX2ncs;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.196 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f196.google.com with SMTP id af79cd13be357-8c6d8751c88so263655085a.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 08:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769185893; x=1769790693; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=871+kMuUuN8eKawcT4NNcOEOt4uiGeIzveYuD9+CVek=;
        b=PaFX2ncsJMfedZSiIeUw+Zzr9OGnU+UfC5TnL7fK+vJkZDMX5zS56yR9t+325OqjRF
         xUoSJBrEMu/mpnYLBXoHD44ym5H/Jhwx9m6Ds8dA+aPGJ53RWr1R8cDCJ5NIwiHUgHb6
         qxcVCDzf4baTwDpYc25r/47LlUTIPY/JiG0rgW7lVq0pyhbUcuE9/jyr+/MmTZ7Xc0El
         lF+edgBejQGuEQ0/cmtW5gc8htdtyAahTMK4zpEnditgrHOdqH45giSJP+FvKcGy3Ohr
         ohtpv+LRP9kZkNBssOImIngjxrM+II/37oHnkT+Mb4XbdYwsZkDNmXtRN1Q2+QGH1+ZY
         aqiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769185893; x=1769790693;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=871+kMuUuN8eKawcT4NNcOEOt4uiGeIzveYuD9+CVek=;
        b=BBK16T1TIa+RCvcZuQidfF6d/YbxtPxqszReco0CPZdVeYo5zanNcC4eA4OjG3nhHW
         zJoi/bcsfzXMOGDPd3lGfUgOtYDBlONAxWz/gh5egpoV/U7ln04PxJ7YYzuetf4hzoDA
         q4tOSB7f+tih6M255ltOPEX0avZ97tNh4aMqJlSlOxozPw1Yw/NabxMZfIlkF4qW6Mjt
         x5Ek1lWfX1/KsxIWaVjAsSy0iZao6uGbE8RT1cLJz0H0g7O11qw9UimlnXuhmLooIVkn
         zGI63Jj2P+BHyLABlcHRPQJqYcRGSlaW645oKyxsr1ZsnsxFDnhckyqjLsXfNOi8Sg0g
         n2BA==
X-Forwarded-Encrypted: i=1; AJvYcCWtuQfsoj7sXI1GJqX9qebW7NYgfKsmfG7lk5YdzfnoybDJ9NaxdCDEXPxxzc/L42D0W9IfwQS9Yv140I44@lists.linaro.org
X-Gm-Message-State: AOJu0YxhJFDiLxc99s6Oj3PIYmfzfAqwAzM7YORQ0RYixZnV2c8ZXglR
	hDVL9f6Jkz2Qlvzvks4dkpf8vXrRGCKRSHBW2V+JkZd1appZn6plrXO6u0Quie9Dask=
X-Gm-Gg: AZuq6aKFP9e3RSFwySAC5y1BAEQqGF3ZraWz7PhFvvj426/4/ltPoUzQvARooHNplyq
	lIN/VWFN9FoOmoxd56aaz1mt9TR41/mjKHH6Ad9+WuMzHINS7qheBmiOQq5W5bTHYYchn/2cGzO
	E1jgq0Ap0Dkrb9rhl+vMAv7LVBumkjPC17XLQfzITblZn/tFioVSa6/dAbFtAlvx6tXBMLtuFiv
	lamKb6KAGPyKBl1XGRTSxtLHHSt51BxW3Ct/yBr1f0eYI9w+fXw+KSiD9ZpYLlV7GeR6CpnlrVn
	gLqxSxAnl5Uu+nDYkd/j/ysfhUsOyk2OMcg2SFRUT4lzezHnhnU4xJE4kAqrPXV7GZ/B/WEKlAU
	zbkYoT/3aGxbajH1GyVEO8o7/G7lldoHvuFiFZpdJdKrTNObdLF5i3IrNLiLCTcOHWq3gOBogIE
	hOd46hSsxECq+5yzuxQdjmnHww/N0rbH/dYg1b5kS4newxu41Kw7hujNbDB9Bjf8+02XI=
X-Received: by 2002:a05:620a:1901:b0:8c6:c9a2:504d with SMTP id af79cd13be357-8c6e2e48438mr431308085a.59.1769185893221;
        Fri, 23 Jan 2026 08:31:33 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8949193cdc1sm19709316d6.47.2026.01.23.08.31.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 08:31:32 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vjK4K-00000007Grc-04II;
	Fri, 23 Jan 2026 12:31:32 -0400
Date: Fri, 23 Jan 2026 12:31:32 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260123163132.GA1641016@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
 <20260121133146.GY961572@ziepe.ca>
 <b88b500c-bacc-483d-9d1a-725d4158302a@amd.com>
 <20260121160140.GF961572@ziepe.ca>
 <a1c55bd8-9891-4064-83fe-ac56141e586f@amd.com>
 <20260122234404.GB1589888@ziepe.ca>
 <20260123141140.GC1589888@ziepe.ca>
 <98b74c7a-44c1-49ba-997b-bbbab60429ba@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98b74c7a-44c1-49ba-997b-bbbab60429ba@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: OJMVH53G37THCVMGIC3457WXCTQXSOGM
X-Message-ID-Hash: OJMVH53G37THCVMGIC3457WXCTQXSOGM
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OJMVH53G37THCVMGIC3457WXCTQXSOGM/>
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
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 20E9478870
X-Rspamd-Action: no action

T24gRnJpLCBKYW4gMjMsIDIwMjYgYXQgMDU6MjM6MzRQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiBJdCBpcyBpbGxlZ2FsIHRvIGNhbGwgdGhlIERNQSBBUEkgYWZ0ZXIgeW91
ciBkcml2ZXIgaXMgdW5wcm9iZWQuIFRoZQ0KPiA+IGtlcm5lbCBjYW4gb29wcy4gU28gaWYgYSBk
cml2ZXIgaXMgYWxsb3dpbmcgcmVtb3ZlKCkgdG8gY29tcGxldGUNCj4gPiBiZWZvcmUgYWxsIHRo
ZSBkbWFfYnVmX3VubWFwcyBoYXZlIGJlZW4gY2FsbGVkIGl0IGlzIGJ1Z2d5IGFuZCByaXNrcw0K
PiA+IGFuIG9vcHMuDQo+ID4gDQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC84MDY3
ZjIwNC0xMzgwLTRkMzctOGZmZC0wMDdmYzZmMjY3MzhAa2VybmVsLm9yZy9ULyNtMGM3ZGRhMGZi
NTk4MTI0MDg3OWM1Y2E0ODkxNzY5ODdkNjg4ODQ0Yw0KPiA+IA0KPiA+IEFzIGNhbGxpbmcgYSBk
bWFfYnVmX3VubWFwKCkgLT4gZG1hX3VubWFfc2coKSBhZnRlciByZW1vdmUoKSByZXR1cm5zDQo+
ID4gaXMgbm90IGFsbG93ZWQuLg0KPiANCj4gVGhhdCBpcyBub3QgZXZlbiBpbiB0aGUgaGFuZHMg
b2YgdGhlIGRyaXZlci4gVGhlIERNQS1idWYgZnJhbWV3b3JrDQo+IGl0c2VsZiBkb2VzIGEgbW9k
dWxlX2dldCgpIG9uIHRoZSBleHBvcnRlci4NCg0KbW9kdWxlX2dldCgpIHByZXZlbnRzIHRoZSBt
b2R1bGUgZnJvbSBiZWluZyB1bmxvYWRlZC4gSXQgZG9lcyBub3QNCnByZXZlbnQgdGhlIHVzZXIg
ZnJvbSB1c2luZyAvc3lzLy4uL3VuYmluZCBvciB2YXJpb3VzIG90aGVyIHdheXMgdG8NCnJlbW92
ZSB0aGUgZHJpdmVyIGZyb20gdGhlIGRldmljZS4NCg0Kcm1tb2QgaXMgYSBwb3B1bGFyIHdheSB0
byB0cmlnZ2VyIHJlbW92ZSgpIG9uIGEgZHJpdmVyIGJ1dCBub3QgdGhlDQpvbmx5IHdheSwgYW5k
IHlvdSBjYW4ndCBwb2ludCB0byBhIG1vZHVsZV9nZXQoKSB0byBkaXNtaXNzIGlzc3VlcyB3aXRo
DQpkcml2ZXIgcmVtb3ZlKCkgY29ycmVjdG5lc3MuDQoNCj4gUmV2b2tpbmcgdGhlIERNQSBtYXBw
aW5ncyB3b24ndCBjaGFuZ2UgYW55dGhpbmcgb24gdGhhdCwgdGhlDQo+IGltcG9ydGVyIG5lZWRz
IHRvIHN0b3AgdXNpbmcgdGhlIERNQS1idWYgYW5kIGRyb3AgYWxsIHRoZWlyDQo+IHJlZmVyZW5j
ZXMuDQoNCkFuZCB0byBiZSBjb3JyZWN0IGFuIGV4cG9ydGluZyBkcml2ZXIgbmVlZHMgdG8gd2Fp
dCBpbiBpdHMgcmVtb3ZlDQpmdW5jdGlvbiB1bnRpbCBhbGwgdGhlIHVubWFwcyBhcmUgZG9uZS4N
Cg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
