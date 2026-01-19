Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 043A9D3B2E8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 18:00:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D90840140
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 16:59:59 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by lists.linaro.org (Postfix) with ESMTPS id 067733F734
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 16:59:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b="i/yzv6Bp";
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.180 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8c52c67f64cso476290485a.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 08:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768841992; x=1769446792; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TPsA7s1a/5IQbuetD0KLnhoW9jbCMPzN3lJpfuVRncw=;
        b=i/yzv6BpJ+JWmfVojmWA3pfczHcRpiJS59cQ+Hoa26QUWWmX4P9dv2FpPLx32hao7m
         paP3RIiLi6+c1rXohe6t+q2rWM9Ys13DWPtTs5XKbbeKueK9dcdf5ai4kUf0nTmuTmp2
         oHoBw6MwUCQr6t7kSZgNfbjX9UYjPH7wRcQ15zElr36kEYeoBFIukCPWPWNT3lUiGTIx
         xMmH7+2ojjxC3sT25jjbrBJxTdzUXJebp5xXRqmNdYVzJVuefSTsVOa8wYcH0Cx0D3hK
         oCM2WVENNMI9xd5dK/NFcBLN9Ihyr62lUXGhA3eNCk7+OYGgW8WVYoNITijSREcfxG09
         hBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768841992; x=1769446792;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TPsA7s1a/5IQbuetD0KLnhoW9jbCMPzN3lJpfuVRncw=;
        b=QgMooBedzl5sT5HyphxiDssMJpdhgdltFH7PkKVJe2cYVXgdPPC99D1wGBkPf+66YG
         iOUB4+ycd0Kd8k/2MVd+E2w4N53bRLoi30/2ZRI+wyFZbAgKqhhyCp1nY8yOCljxihbk
         WKYXN694hCHCgrG1bECx6ArEIy+X8sLcEcYJyX4hrO8Aw0n0oBeianbYXIaep8ExGla2
         hQfRMennh4IiCykNodBKo68i0vlnT+0TaXf/kmK1FtGJNqrBBhzylGt1ly0UFhH4avQ+
         Cy0Mggi7gL2IfTEWUhnxyF2xsXHO2muTWXXjxiYFYXWLi257djofIDKAGeEfMX1i7zop
         Qmkw==
X-Forwarded-Encrypted: i=1; AJvYcCUzOgd/6cD5Ua+TgXlJNZGAhWYjmX0ue4vzyRJbOpm7FFRcly9tzJ/Pd+pG6a0nh2dxa8tJQnKE7cCgOSGU@lists.linaro.org
X-Gm-Message-State: AOJu0YwYTidavGPJVR5xnNcSRtPV8kitXKqGUQK4mOuJimoY82QFDOrZ
	HU36s97FQbmuhZQdkKvLB9nEyfDxoUf0erHqrRAL7idNXfUZPpbnEEiLqtlYEx/wz6g=
X-Gm-Gg: AY/fxX5iRJmeuaVQHPORF6mfh9zJ3Kp5jvpSSy4MkwiNQygDZGIALADbArlGXXwkem+
	9PiNIxxfemzt9CjHuBX8nH2bWkzwyIb/cznlHg43IBOSluHhyxfV3svECn+yjObTejQAXIM68sz
	sW35g1bgzAxnBsLtYM4VCpquqAJK919/0qTZKYvDD1S6dgS+iQot+LNrF0tANMGHBtES0E0rwqi
	E1TC5YUjUpctrM/UPWXVgInmFac2RhXXvCjnSmCy2P8W5+dMMXZw8t8WFMsIScOIXSZre+B4/u+
	vk7w+P1hZa+9ztTNAfRoo5mmO9S4QAbLBhghWUDacPtKVjihv7VIIndBIQnRslKQ28FdgdSuw8m
	NtkNMFkNJVtiC31ksTwh6DiMKZN6HdaaoV6IztsSN1oXu515z6PWxXvimTMnHOKk43rJU4zgHGh
	g87k9efzsDa94uB412ESeXCmgBFXnaVYRKR3bL3McgRRUzhapz/w189ogjOdtKIDWWey0=
X-Received: by 2002:ac8:7f56:0:b0:501:50cd:cd3a with SMTP id d75a77b69052e-502a16b363amr184663241cf.43.1768841992288;
        Mon, 19 Jan 2026 08:59:52 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e5e4d79sm93947786d6.2.2026.01.19.08.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 08:59:51 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vhsbX-00000005IQz-1QSu;
	Mon, 19 Jan 2026 12:59:51 -0400
Date: Mon, 19 Jan 2026 12:59:51 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260119165951.GI961572@ziepe.ca>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-3-a03bb27c0875@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260118-dmabuf-revoke-v2-3-a03bb27c0875@nvidia.com>
X-Rspamd-Queue-Id: 067733F734
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ziepe.ca];
	RCPT_COUNT_TWELVE(0.00)[31];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DNSWL_BLOCKED(0.00)[142.162.112.119:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.180:from];
	DWL_DNSWL_BLOCKED(0.00)[ziepe.ca:dkim];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.222.180:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YVF2COLHIRKDINKSDB3YF2N7VTRF5UNX
X-Message-ID-Hash: YVF2COLHIRKDINKSDB3YF2N7VTRF5UNX
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.
 freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/4] iommufd: Require DMABUF revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YVF2COLHIRKDINKSDB3YF2N7VTRF5UNX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgMDI6MDg6NDdQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiAN
Cj4gSU9NTVVGRCBkb2VzIG5vdCBzdXBwb3J0IHBhZ2UgZmF1bHQgaGFuZGxpbmcsIGFuZCBhZnRl
ciBhIGNhbGwgdG8NCj4gLmludmFsaWRhdGVfbWFwcGluZ3MoKSBhbGwgbWFwcGluZ3MgYmVjb21l
IGludmFsaWQuIEVuc3VyZSB0aGF0DQo+IHRoZSBJT01NVUZEIERNQUJVRiBpbXBvcnRlciBpcyBi
b3VuZCB0byBhIHJldm9rZeKAkWF3YXJlIERNQUJVRiBleHBvcnRlcg0KPiAoZm9yIGV4YW1wbGUs
IFZGSU8pLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZp
ZGlhLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYyB8IDkgKysr
KysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMgYi9kcml2
ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYw0KPiBpbmRleCA3NmY5MDBmYTE2ODcuLmE1ZWIyYmM0
ZWY0OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCj4gKysr
IGIvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCj4gQEAgLTE1MDEsMTYgKzE1MDEsMjIg
QEAgc3RhdGljIGludCBpb3B0X21hcF9kbWFidWYoc3RydWN0IGlvbW11ZmRfY3R4ICppY3R4LCBz
dHJ1Y3QgaW9wdF9wYWdlcyAqcGFnZXMsDQo+ICAJCW11dGV4X3VubG9jaygmcGFnZXMtPm11dGV4
KTsNCj4gIAl9DQo+ICANCj4gLQlyYyA9IHN5bV92ZmlvX3BjaV9kbWFfYnVmX2lvbW11ZmRfbWFw
KGF0dGFjaCwgJnBhZ2VzLT5kbWFidWYucGh5cyk7DQo+ICsJcmMgPSBkbWFfYnVmX3BpbihhdHRh
Y2gpOw0KPiAgCWlmIChyYykNCj4gIAkJZ290byBlcnJfZGV0YWNoOw0KPiAgDQo+ICsJcmMgPSBz
eW1fdmZpb19wY2lfZG1hX2J1Zl9pb21tdWZkX21hcChhdHRhY2gsICZwYWdlcy0+ZG1hYnVmLnBo
eXMpOw0KPiArCWlmIChyYykNCj4gKwkJZ290byBlcnJfdW5waW47DQo+ICsNCj4gIAlkbWFfcmVz
dl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCj4gIA0KPiAgCS8qIE9uIHN1Y2Nlc3MgaW9wdF9yZWxl
YXNlX3BhZ2VzKCkgd2lsbCBkZXRhY2ggYW5kIHB1dCB0aGUgZG1hYnVmLiAqLw0KPiAgCXBhZ2Vz
LT5kbWFidWYuYXR0YWNoID0gYXR0YWNoOw0KPiAgCXJldHVybiAwOw0KDQpEb24ndCB3ZSBuZWVk
IGFuIGV4cGxpY2l0IHVucGluIGFmdGVyIHVubWFwcGluZz8NCg0KSmFzb24NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
