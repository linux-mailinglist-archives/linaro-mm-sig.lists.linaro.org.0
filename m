Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CEBD3B088
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 17:24:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77DD23F6FF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 16:24:32 +0000 (UTC)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
	by lists.linaro.org (Postfix) with ESMTPS id 27B783F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 16:24:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b="Was/Ew0G";
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.194 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f194.google.com with SMTP id af79cd13be357-8c531473fdcso604715685a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 08:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768839866; x=1769444666; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zCRrpohPCspJo8o5qWVDG1aTKo63AMTSXJRpwyKl02I=;
        b=Was/Ew0GPu4Jz6NNd75cqlBOZZ5r6Q2VDcLY2rLdfj3Su1nZjbJ72KaqTKeaeJzYvl
         iMeMul7p9rjq8WwC7NOAMZyKrGljvpRM70kiPamSjWzIbnjSdck8MLdp9VTWA+U5uOam
         Ukuk8xHFkdTf89DCHF/rXnU/kx/NFJWzKVyuCenxTPY9FrCosbHLIX+8AhfGTv8SF0Km
         PnGrMpDhhodAk9pEB6PbO0Fe/Yukm561tv72TZdeYs8zDIKNk3+raRKN/iE1USEe+6xc
         fROnzOByOjw4qefT5KnU1PV8iYYYNkK927RgRbHq0fCFR1C7Y8JckjQCYEJwt5fx/3TI
         hOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768839866; x=1769444666;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zCRrpohPCspJo8o5qWVDG1aTKo63AMTSXJRpwyKl02I=;
        b=QoDHiIm1IkkNl9tIdHX6Li8nJJlm7p+h9S78RRQ8geww3OJSE1LY497HIIKVaFKrqU
         jy4Ffuwrilc/kAm0uhZRlr6FT7IMvXxVFKi5w+nL2Py/5xkWIzbwi8nIEy2V99n11hED
         4CUKRl555SQFxmWh2FRqu9lFfy2rgxsOjz2N0Rq0St20uOxN1fBNlk4luDzTIHOOvhpe
         Bb9v5kx3L0WpdZ/YmBIcFBPU394t7xAjwyBDQV2uBCif4rUTOZ7FTHJtzn7up3LUBpkk
         35zSVTvNS6KOT9Lo/O/PvNAgrFvCh0eczbB+bs1p3Z4sOn6BBVlg0OceXHpa0aihB1G2
         qCEg==
X-Forwarded-Encrypted: i=1; AJvYcCWQiQSBuR3sXSysPVvNgFESvrp501K5sWOznXJD8K77pyEZlRJQTw6gbXwzHeVjJVXm9q93IjKFaPj1A0Ld@lists.linaro.org
X-Gm-Message-State: AOJu0YxL/73HLBbwCnUQzeeYegweGSwZyWgKlnZPBzW8pum7QS5QAmQN
	XWsMvMJLPHASl056sFHN+SQmHhLU6v2A62ZRSMOhLXjMNvJbMeh4QFMZRd0sjP50EEo=
X-Gm-Gg: AY/fxX5AmyhJHnAGgP/1nEImVip7A0g9IZzPLPCp7UPP/DQ8CU7v9Etmh7z2VOOc+oM
	gOKbhbY+AZkTRmb77ecFn4HODZPqdBBL3I1mr5XSjkiqnLwkoNBztcFBamWE/nLhtZL/GekSFoQ
	u2eU9Zx67pJM1EkpajgRKlKy7Ii3w8LiebLQGB1CfYoJdbPf8is7UFR99kVQeE51jbr6QYlxZrC
	ZK2cOvYHXH7o+qgA+hN4Q+LbpyjSjqw6cJSHyU3J3j2Wzb4WaLaEHSZ1jr2BYOl4WaBtqQBF4Kn
	Zuy8Wv0dH4MmiFX/lu7LLXLs/JqH+UrSiHnsfWDOucvzd9WQHJwbFnq7HVYg4M4gJ+fjz2jcEKt
	AUq5YXfL2oJ9/PwalGmAEWPImZkabrm5X30ljnWiW2QrQ93jtQnBzeA8W0d2ww+l+pSmRp84TWH
	kpvUvGCs8z805KTPOqWz7WZVDavvxkT6dhjBwc3iQidi8YuwjxceYxm2beHojSc/5LBx4=
X-Received: by 2002:a05:620a:2a02:b0:8c5:33bf:5252 with SMTP id af79cd13be357-8c6a6963403mr1445548485a.70.1768839865634;
        Mon, 19 Jan 2026 08:24:25 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a724a484sm800372485a.33.2026.01.19.08.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 08:24:25 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vhs3E-00000005I0S-2Krj;
	Mon, 19 Jan 2026 12:24:24 -0400
Date: Mon, 19 Jan 2026 12:24:24 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20260119162424.GE961572@ziepe.ca>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
 <20260119075229.GE13201@unreal>
 <9112a605d2ee382e83b84b50c052dd9e4a79a364.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9112a605d2ee382e83b84b50c052dd9e4a79a364.camel@linux.intel.com>
X-Rspamd-Queue-Id: 27B783F6FF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.37 / 15.00];
	BAYES_HAM(-2.87)[99.43%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.194:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ziepe.ca];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[142.162.112.119:received,209.85.222.194:from];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JBZG4W6MQKLHULVTL67BNVKS652I4I4Z
X-Message-ID-Hash: JBZG4W6MQKLHULVTL67BNVKS652I4I4Z
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.ke
 rnel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JBZG4W6MQKLHULVTL67BNVKS652I4I4Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMTA6Mjc6MDBBTSArMDEwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gd3JvdGU6DQo+IHRoaXMgc291bmRzIGxpa2UgaXQncyBub3QganVzdCB1bmRvY3VtZW50ZWQg
YnV0IGFsc28gaW4gc29tZSBjYXNlcw0KPiB1bmltcGxlbWVudGVkLiBUaGUgeGUgZHJpdmVyIGZv
ciBvbmUgZG9lc24ndCBleHBlY3QgbW92ZV9ub3RpZnkoKSB0byBiZQ0KPiBjYWxsZWQgb24gcGlu
bmVkIGJ1ZmZlcnMsIHNvIGlmIHRoYXQgaXMgaW5kZWVkIGdvaW5nIHRvIGJlIHBhcnQgb2YgdGhl
DQo+IGRtYS1idWYgcHJvdG9jb2wsICB3b3VsZG4ndCBzdXBwb3J0IGZvciB0aGF0IG5lZWQgdG8g
YmUgYWR2ZXJ0aXNlZCBieQ0KPiB0aGUgaW1wb3J0ZXI/DQoNCkNhbiB5b3UgY2xhcmlmeSB0aGlz
Pw0KDQpJIGRvbid0IHNlZSB4ZSdzIGltcG9ydGVyIGNhbGxpbmcgZG1hX2J1Zl9waW4oKSBvciBk
bWFfYnVmX2F0dGFjaCgpDQpvdXRzaWRlIG9mIHRlc3RzPyBJdCdzIGltcG9ydGVyIGltcGxlbWVu
dHMgYSBmdWxseSBmdW5jdGlvbmFsIGxvb2tpbmcNCmR5bmFtaWMgYXR0YWNoIHdpdGggbW92ZV9u
b3RpZnkoKT8NCg0KSSBzZWUgdGhlIGV4cG9yZXIgaXMgY2hlY2tpbmcgZm9yIHBpbm5lZCBhbmQg
dGhlbiBub3QgY2FsbGluZw0KbW92ZV9ub3RpZnkgLSBpcyB0aGF0IHdoYXQgeW91IG1lYW4/DQoN
CldoZW4gSSBsb29rZWQgdGhyb3VnaCBhbGwgdGhlIGltcG9ydGVycyBvbmx5IFJETUEgb2J2aW91
c2x5IGRpZG4ndA0Kc3VwcG9ydCBtb3ZlX25vdGlmeSBvbiBwaW5uZWQgYnVmZmVycy4NCg0KSmFz
b24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
