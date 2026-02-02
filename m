Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLisKOnIgGl3AgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Feb 2026 16:55:21 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3298ACE7B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Feb 2026 16:55:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 415E03F7D8
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Feb 2026 15:55:20 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by lists.linaro.org (Postfix) with ESMTPS id 6C3AD3F7AC
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Feb 2026 15:55:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=PzvRpUKu;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.174 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-502a98c66f7so37552551cf.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Feb 2026 07:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1770047713; x=1770652513; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ALEv89D4GoCyBIrWNO6jRp/YUrS6bKKk+NOOQflmefI=;
        b=PzvRpUKuZ1BqbqB22kZ8RaJtcD60aBKGHK9o0217TmOZJ14P5pv6UBE2QLQkc6+KrK
         WRlVS1GhpCEKrmrBHngJ1i6g87Ep/B1Ps1UDULiDvjKjPpXsajoeb3XsDKggy9WZaUI0
         zV8AP1p0kHQJVy20SmCRmPzaq8Of1BuvE3lLhqjX3eoLE0u0Un9RPC78SECEuIYOemA/
         SZ6QdmJjACwD89s0Jzc+bQOHXzHz1ROZv+bJWSkKYT0cXUXs2XCX4UO9h+gRnB0E05zh
         xC0qMfKT3Go6p3dybew8VzXl4ZmuN9T9yRQdYVleZ7pTC8TsYZjMHt/8NOXxXuMCr6Gh
         GB5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770047713; x=1770652513;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ALEv89D4GoCyBIrWNO6jRp/YUrS6bKKk+NOOQflmefI=;
        b=Kp0f5/95hvG4tRfF3NkedWHIGRz6fKvdsCv/vTbgngm2qDeEYhUiIjmuYossJEsi6t
         DUizU53SZIj0KZBpnnpvQway/IQw4oBuWIMDXnowlRsSR0cH5wtvkTWvjJu3MscFKFM2
         AovU5byonQMGlqo21upvAOpCk3YjHJZEQUO63swdPOxK4tcGuW+lmPh2twx8FftGM7+X
         JhnXmWOoXuhvGU12aUYG3wc8C2/i+1syl1+sve3jWUfpAeUjf5dUK5vh45tPTe8oyGAg
         GoRLllPOwfOhhOstScK0Lo0gtF9VbweOx3qgnkIgwNa0JegRK5X9Lcj7e3Cr03iy62Yc
         XslQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvRvXCd2smDKt0uSzzK7M9GWf3T8dvsba8ozNNJDZAI2LXDrbk3KUhcUWun0KYn38Ub/mtyPTuPl/Pbo/j@lists.linaro.org
X-Gm-Message-State: AOJu0YyEnxlqgj7112DciLsSXLfrm5yimgTATwIclg8FgGK5hiQHuUkd
	5M+hW264kC7ur1VHqaLrKOqwYqc8ZtBz+t4ywS7rWvoWYtSzFzjus/S2b3VvD3rnUxg=
X-Gm-Gg: AZuq6aILMYvgzMjTQPNypqEEgXVO3Ycexz0q9Ix+/JEQjClPpR4ahUXXJ4b671hlkc1
	QllHqlAYvRi9eyjn/SDnK2EfF0wMtOryiHarvHpTQeoFP+0PiHaLg3uQC0CBHTbjMDLOKsL1SIi
	b+oL/zOpltj2RVP+f78nwKDPYJzZgYJMwHMLOWft0qSVQ7/yHZ9ZK1ZJaA8UaYZvWadt4NM+oJL
	yOnNrmZnChLqigZrddGKoNB4SHhdVToOYqT6RSYqesSV9CNxerwRvPW2kfXdK2QzOx79FqI7Qtz
	S4mZP9bD3uHfnoE1pLWJi3Lj3gd8wZBpeJhg3cmUhB5vLi00xj4JcnPVuQ6JHnQNP7P0kNze+wt
	Zx2rR6DvX5crdJFfioZjdwhCnfc+7ObADlp0OryQsSHIyUJ3mK4yqdwDB4vPbR+ZJBdLRqBOz+K
	yfVMYxdTty0hr98/kSKmquDqbK/2EaxwjceL9C+jERsyO0ORRgqmFG1eHonXzBEq4W/Rs=
X-Received: by 2002:a05:622a:1a82:b0:4f1:dfc8:50b with SMTP id d75a77b69052e-505d22b2818mr153088161cf.76.1770047712810;
        Mon, 02 Feb 2026 07:55:12 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50337ba3997sm107174411cf.17.2026.02.02.07.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:55:12 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vmwGd-0000000FWiw-2z4k;
	Mon, 02 Feb 2026 11:55:11 -0400
Date: Mon, 2 Feb 2026 11:55:11 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Alex Williamson <alex@shazbot.org>
Message-ID: <20260202155511.GI2328995@ziepe.ca>
References: <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <31872c87-5cba-4081-8196-72cc839c6122@amd.com>
 <20260130130131.GO10992@unreal>
 <d25bead8-8372-4791-a741-3371342f4698@amd.com>
 <20260130135618.GC2328995@ziepe.ca>
 <d1dce6c1-9a89-4ae4-90eb-7b6d8cdcdd91@amd.com>
 <20260130144415.GE2328995@ziepe.ca>
 <c976c33c-4fa7-4350-8dcc-a5c218d1b0d6@amd.com>
 <20260202151221.GH2328995@ziepe.ca>
 <44ec9689-045e-401b-b9cc-17abdd938bc7@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44ec9689-045e-401b-b9cc-17abdd938bc7@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: DT5BFIZU4JYI7JO73JG33RW4LJXO6L7G
X-Message-ID-Hash: DT5BFIZU4JYI7JO73JG33RW4LJXO6L7G
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.fre
 edesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DT5BFIZU4JYI7JO73JG33RW4LJXO6L7G/>
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
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.fre,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,linaro.org:email]
X-Rspamd-Queue-Id: 3298ACE7B6
X-Rspamd-Action: no action

T24gTW9uLCBGZWIgMDIsIDIwMjYgYXQgMDQ6MjE6NTBQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiBJIGFkbWl0IEkgZG9uJ3Qga25vdyBhIGxvdCBhYm91dCBWRklPIFBNIHN1
cHBvcnQuLiBUaG91Z2ggSSB0aG91Z2h0IGluDQo+ID4gdGhlIFZGSU8gY2FzZSBQTSB3YXMgYWN0
dWFsbHkgdW5kZXIgdXNlcnNwYWNlIGNvbnRyb2wgYXMgZ2VuZXJhbGx5IHRoZQ0KPiA+IFBNIGNv
bnRyb2wgaXMgZGVsZWdhdGVkIHRvIHRoZSBWTS4NCj4gPiANCj4gPiBUaHJvdWdoIHRoYXQgbGVu
cywgd2hhdCBpcyBoYXBwZW5pbmcgaGVyZSBpcyBjb3JyZWN0LiBJZiB0aGUgVk0NCj4gPiByZXF1
ZXN0cyB0byBzaHV0IGRvd24gVkZJTyBQTSAodGhyb3VnaCBhIGh5cGVydmlzb3IgdmZpbyBpb2N0
bCkgdGhlbg0KPiA+IHdlIGRvIHdhbnQgdG8gcmV2b2tlIHRoZSBETUFCVUYgc28gdGhhdCB0aGUg
Vk0gY2FuJ3QgdHJpZ2dlciBhIEFFUi9ldGMNCj4gPiBieSB0cnlpbmcgdG8gYWNjZXNzIHRoZSBz
bGVlcGluZyBQQ0kgZGV2aWNlLg0KPiA+IA0KPiA+IEkgZG9uJ3QgdGhpbmsgVkZJTyB1c2VzIGF1
dG9tYXRpYyBQTSBvbiBhIHRpbWVyLCB0aGF0IGRvZXNuJ3QgbWFrZQ0KPiA+IHNlbnNlIGZvciBp
dCdzIHByb2dyYW1taW5nIG1vZGVsLg0KPiANCj4gRnJvbSB5b3VyIGRlc2NyaXB0aW9uIEkgYWdy
ZWUgdGhhdCB0aGlzIGRvZXNuJ3QgbWFrZSBzZW5zZSwgYnV0IGZyb20NCj4gdGhlIGNvZGUgaXQg
bG9va3MgbGlrZSBleGFjdGx5IHRoYXQgaXMgZG9uZS4NCj4gDQo+IEdyZXAgZm9yIHBtX3J1bnRp
bWVfKiBvbiBkcml2ZXJzL3ZmaW8vcGNpLCBidXQgY291bGQgYmUgdGhhdCBJDQo+IG1pc3VuZGVy
c3Rvb2QgdGhlIGZ1bmN0aW9uYWxpdHksIGUuZy4gZGlkbid0IHNwZW5kIHRvIG11Y2ggdGltZSBv
bg0KPiBpdC4NCj4gDQo+IEp1c3Qga2VlcCBpdCBpbiB0aGUgYmFjayBvZiB5b3VyIG1pbmQgYW5k
IG1heWJlIGRvdWJsZSBjaGVjayBpZiB0aGF0DQo+IGlzIGFjdHVhbGx5IHRoZSBkZXNpcmVkIGJl
aGF2aW9yLg0KDQpJIGhhZCBhIHNtYWxsIGNvbnZlcnNhdGlvbiB3aXRoIEFsZXhXIGFuZCB3ZSB0
aGluayBWRklPIGlzIE9LIChidWdzDQpleGNsdWRlZCkuDQoNClRoZSB1c2Ugb2YgdGhlIFBNIHRp
bWVyIGlzIHN0aWxsIHVuZGVyIHVzZXJzcGFjZSBjb250cm9sLCBldmVuIHRob3VnaA0KYSB0aW1l
ciBpcyBzdGlsbCBpbnZvbHZlZC4NCg0KQmFzaWNhbGx5IHRoZXJlIGFyZSBhIHNlcmllcyBvZiBJ
T0NUTCBkZWZpbmVkIGluIFZGSU8sIGxpa2UNCkxPV19QT1dFUl9FTlRSWSB0aGF0IGFsbCBpc29s
YXRlIHRoZSBQQ0kgZGV2aWNlIGZyb20gdXNlcnNwYWNlLiBUaGUNCm1tYXAgaXMgYmxvY2tlZCB3
aXRoIFNJQkdVUyBhbmQgdGhlIERNQUJVRnMgYXJlIHJldm9rZWQuDQoNClRoZSBWRklPIHVBUEkg
Y29udHJhY3QgcmVxdXJpZXMgdXNlcnNwYWNlIHRvIHN0b3AgdG91Y2hpbmcgdGhlIGRldmljZQ0K
aW1tZWRpYXRlbHkgd2hlbiB1c2luZyB0aGVzZSBJT0NUTHMuIFRoZSBQTSB0aW1lciBtYXkgc3Rp
bGwgYmUNCmludm9sdmVkLCBidXQgaXMgYW4gaW1wbGVtZW50YXRpb24gZGV0YWlsLg0KDQpFZmZl
Y3RpdmVseSBWRklPIGhhcyBhIGRldmljZSBzdGF0ZSAiaXNvbGF0ZWQiIG1lYW5pbmcgdGhhdCB1
c2Vyc3BhY2UNCmNhbm5vdCBhY2Nlc3MgdGhlIE1NSU8sIGFuZCBpdCBlbnRlcnMgdGhpcyBzdGF0
ZSBiYXNlZCBvbiB2YXJpb3VzDQpJT0NUTHMgZnJvbSB1c2Vyc3BhY2UuIEl0IHRpZXMgbW1hcCBh
bmQgRE1BQlVGIHRvZ2V0aGVyIHNvIHRoYXQgaWYNCm1tYXAgU0lHQlVTJ3MgdGhlIERNQUJVRiBp
cyB1bm1hcHBlZC4NCg0KSSB1bmRlcnN0YW5kIHlvdXIgcmVtYXJrcywgYW5kIHRoaXMgdXNlIG9m
IFBNIGlzIGNlcnRhaW5seSBub3RoaW5nDQp0aGF0IGFueSBvdGhlciBkcml2ZXIgc2hvdWxkIGNv
cHksIGJ1dCBpdCBkb2VzIG1ha2Ugc2Vuc2UgZm9yIFZGSU8uIElmDQp0aGVyZSBhcmUgYnVncy9p
c3N1ZXMgd2Ugd291bGQgY29udGludWUgdG8ga2VlcCB0aGUgb3ZlcmFsbCBwcm9wZXJ0eQ0KdGhh
dCBTR0lCVVM9PURNQUJVRiB1bm1hcHBlZCBhbmQgb25seSBhZGp1c3Qgd2hlbiB0aGF0IGhhcHBl
bnMuDQoNClRCSCwgSSBkb24ndCB0aGluayBwZW9wbGUgdXNlIHRoZSBWRklPIFBNIGZlYXR1cmUg
dmVyeSBtdWNoLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
