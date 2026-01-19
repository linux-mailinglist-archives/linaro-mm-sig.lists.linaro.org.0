Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E57D3B204
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 17:46:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 653C93F9D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 16:46:26 +0000 (UTC)
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
	by lists.linaro.org (Postfix) with ESMTPS id 2985E3F6B6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 16:46:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=hCV+DfYY;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.194 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f194.google.com with SMTP id d75a77b69052e-5013d163e2fso46180851cf.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 08:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768841181; x=1769445981; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zfC54g6ZC0VxR+dcM7NfRz1NWoEdvriN2xR6YNn2bfs=;
        b=hCV+DfYY0st/IzDz5bgSkttwuRlwMLK+4PjNyPLC25B1uHoeZhIcVBM+LiOMWzxIiY
         nwcbArRyl2DqbWb6Zbqha3CjYrogP4BM609K/v40TUt1cduf6dyJCG45WbZMqppbXx17
         mbQSckaYKVS0lcGG/PgMnh/4pgGm6pbs5PXGHh+6NbnXIoTPWLJcX86xcjrMu0epZfwd
         UJ47cfKwQnyi3TxmBSAIeuzReLe0qctU77grLi3aXQ6tWbtnRrJikS7hOzwxTUPORCiF
         BmKEyELhURtAVErmodRPvFfqabCa457HXzRIb0TXP5As3mL9vkHFeK1SVcxrOPEmnjwQ
         yTpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768841181; x=1769445981;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zfC54g6ZC0VxR+dcM7NfRz1NWoEdvriN2xR6YNn2bfs=;
        b=YnZ2MK9jJ4aNrt+PbYoXPZJz3EoRjTp7uOQjRROgHjKjCLFEDnQG1WwqO9UnoAB79F
         wacosXJed38CPrqSnOHLChU56mfxdFs+JHmJBoR7IPBrF3gLgb4jGbGaQv5FncxCYAKd
         FJN5zm+RxSqBqnmLHH8gzzAyC0VWyNi6pupsImK4IqL1ZxnfYD30MVzdT8iVpKhHjLk4
         iYH3/GjukWvp6hJJLS6SxtPQ98Ar/19T75Bvco6gQEGGALT1psrzAsPhWPTAVWTkCxhG
         +YPjPn7vg7bD0SvQKwoKmEHklZOS5gO9h2AwathwMdnnBDSIVOeSt18PCuSNcZJDapaZ
         ksHw==
X-Forwarded-Encrypted: i=1; AJvYcCWI3kKVG3I2qaMbXGYwclbJs51XqdfykNLCL4wUDn54O63ZfSqISkbx6VyyzQuH2kq/m+7A+18oKSz0BCMi@lists.linaro.org
X-Gm-Message-State: AOJu0YyiJiMMCFikNH+Vf/tMya6RBzCyxl852udYN+rmU7yGS+6lBGTO
	FMf5oian89Gif96AgMazq6ATfPl5K9HnafX4gbd/Rt4XrcIHMEB1nZ7jDvke/YG+chs=
X-Gm-Gg: AY/fxX7JSgHnZQXNKxvhz6rKA5I8cyBAnbAeb7pZaKy72GbqCS3+G3PFjXG8RscKpp3
	Xg2vdOFpQ4EMrpHWmXrILjaaK6p70pKw7EJAX9tthgt+75UU5VV3ckJZHFAnFg/L6YwDpSrtl4o
	twgIsuRyl+2uheOPbv0kIHFognkuR2Ytbt5KnaskK5TF5XRueW42MPb/S3fD5p+U7tu3BbI2GNx
	LqlHfJqdV+ZjdNXPNxL4voVT5nYWD2PMYduDnFsHqqWbfhhf1UOymSY47WU2lPA47xxij1liHOK
	oOIg/Gpk/O0ruYHoYoDnx0aZ+iuxAVpffkkPnd5Jo3tAVu1/xpjQpX5ba9VJ5lV3J4maBctgcdw
	4LVhcJbyQyMlLSuzdWZaC7zr2Ms/mbcW07zl4slwouwyHlYMvjAdBK2Ryb9jCqWMFcSLDiwjsey
	YTTiglBlEcoEA/yfEt7s6oKSTj4u10GFquPQeulRc5JUWHdr4JzvXoCDYissXtkGojJwk=
X-Received: by 2002:a05:622a:58e:b0:4ee:17e9:999a with SMTP id d75a77b69052e-502a1e551b4mr166978451cf.33.1768841180580;
        Mon, 19 Jan 2026 08:46:20 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1d9ee19sm71855641cf.14.2026.01.19.08.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 08:46:20 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vhsOR-00000005IML-2VzR;
	Mon, 19 Jan 2026 12:46:19 -0400
Date: Mon, 19 Jan 2026 12:46:19 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20260119164619.GG961572@ziepe.ca>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
 <8bc75706c18c410f9564805c487907aba0aab627.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8bc75706c18c410f9564805c487907aba0aab627.camel@linux.intel.com>
X-Rspamd-Queue-Id: 2985E3F6B6
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.194:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[ziepe.ca:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[142.162.112.119:received,209.85.160.194:from];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4UWNBLOGKSXPLVQ3FTGL35KRFOCFNZBZ
X-Message-ID-Hash: 4UWNBLOGKSXPLVQ3FTGL35KRFOCFNZBZ
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.ke
 rnel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/4] dma-buf: Document revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4UWNBLOGKSXPLVQ3FTGL35KRFOCFNZBZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgMDM6Mjk6MDJQTSArMDEwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gd3JvdGU6DQo+IFdoeSB3b3VsZCB0aGUgaW1wb3J0ZXIgd2FudCB0byB2ZXJpZnkgdGhlIGV4
cG9ydGVyJ3Mgc3VwcG9ydCBmb3INCj4gcmV2b2NhdGlvbj8gSWYgdGhlIGV4cG9ydGVyIGRvZXNu
J3Qgc3VwcG9ydCBpdCwgdGhlIG9ubHkgY29uc2VxdWVuY2UNCj4gd291bGQgYmUgdGhhdCBpbnZh
bGlkYXRlX21hcHBpbmdzKCkgd291bGQgbmV2ZXIgYmUgY2FsbGVkLCBhbmQgdGhhdA0KPiBkbWFf
YnVmX3BpbigpIGlzIGEgTk9QLiBCZXNpZGVzLCBkbWFfYnVmX3BpbigpIHdvdWxkIG5vdCByZXR1
cm4gYW4NCj4gZXJyb3IgaWYgdGhlIGV4cG9ydGVyIGRvZXNuJ3QgaW1wbGVtZW50IHRoZSBwaW4o
KSBjYWxsYmFjaz8NCg0KSSB0aGluayB0aGUgY29tbWVudCBhbmQgY29tbWl0IG1lc3NhZ2Ugc2hv
dWxkIGJlIGNsYXJpZmllZCB0aGF0IA0KZG1hX2J1Zl9hdHRhY2htZW50X2lzX3Jldm9rZSgpIGlz
IGNhbGxlZCBieSB0aGUgZXhwb3J0ZXIuDQoNClRoZSBwdXJwb3NlIGlzIGZvciB0aGUgZXhwb3J0
ZXIgdGhhdCB3YW50cyB0byBjYWxsIG1vdmVfbm90aWZ5KCkgb24gYQ0KcGlubmVkIERNQUJVRiB0
byBkZXRlcm1pbmUgaWYgdGhlIGltcG9ydGVyIGlzIGdvaW5nIHRvIHN1cHBvcnQgaXQuDQoNCkph
c29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
