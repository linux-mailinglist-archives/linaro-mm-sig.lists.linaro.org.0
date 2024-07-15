Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE89493109E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jul 2024 10:52:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 71092447AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jul 2024 08:52:32 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by lists.linaro.org (Postfix) with ESMTPS id BF4B34416B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Jul 2024 08:52:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Nqp6e9vH;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.208.175) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ee9bca8675so5318011fa.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Jul 2024 01:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1721033548; x=1721638348; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zFtI2KoVZL8zpxDmxsiji21hGTTPGlau5bq5V67S++I=;
        b=Nqp6e9vHnL5ghrjxnlo9lUQ45dGS/RPGHB0Mp6rJ1kwUovflZon+TkqQ+U6GwPDbEz
         BJRi0/3XsSNjuKpTjpPmL3bjexPyfSLsGhudhR/jAR/sqhRn56EM1CaO2GRvlTXjoIj0
         fJ7Pmu44Cwyh2y4hX/qJSLxC8IbY+jWBJ7LPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721033548; x=1721638348;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zFtI2KoVZL8zpxDmxsiji21hGTTPGlau5bq5V67S++I=;
        b=CDpb7s1TjBPCvWL6IY8+TbPtUF21Q4gf2Rdo2uJPYioU3n2ljsNLsK78r5LB4i4tpU
         VVMPK6HrlnQkb6cDMOdoGW3aKMl18RXGneYbfsvTARweDMdVHCmzr8A2h5dhD/82hXb+
         7hToYxBq/cbuDrbWObsqMhYJigIPCifQQtfUmxwFqt1fOFzOBG2Oe5i+pnA2ls0KWLCz
         A+kNa0ki/GvE/8Pf/af8gmcvLaSpPIzdr+YI3Fw91vtxgXTrUtsI/iLXhauE9CU6Rj/E
         OAPaYDcU5frr7hlkWqHAD91OqWOYnqMQoJC1U7RO8wuGRLIe9gSQQwrPH3U4ChNqRjrm
         VYQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGuWlnGQZBFE+LQk8QOPLAQMFizWcVLUsyLMvurt6Z70D+cLoRfcLNlz1Kd56PKekRZiC0Sxwn12WEki9YXZpKbt7+RRcxeoXHM0Q3d5o=
X-Gm-Message-State: AOJu0YxSXMb+VYLOGjpJUDks29hNS80uatcF4VU46cVRRSiTy7EFBb0x
	dgbeNVELwhFq/Vny1Ycclv5NrUwWceIKYdhssY/LqcLYzi1wv2uEyzFbV89Y2pw=
X-Google-Smtp-Source: AGHT+IHmjsFZ+qyY6qOuWBh0tmFYh3x5Sbnw2EXZYOBODf4NfNY2g4S0U+DdM2RcQHVCl5EcvZtu3w==
X-Received: by 2002:a05:651c:198b:b0:2ee:91b7:860 with SMTP id 38308e7fff4ca-2eec98be531mr64924681fa.4.1721033546536;
        Mon, 15 Jul 2024 01:52:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f2cc306sm113442395e9.30.2024.07.15.01.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 01:52:26 -0700 (PDT)
Date: Mon, 15 Jul 2024 10:52:23 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <ZpTjR-7dabdyREXS@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Lei Liu <liulei.rjpt@vivo.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Hildenbrand <david@redhat.com>,
	Matthew Wilcox <willy@infradead.org>,
	Muhammad Usama Anjum <usama.anjum@collabora.com>,
	Andrei Vagin <avagin@google.com>,
	Ryan Roberts <ryan.roberts@arm.com>,
	Kefeng Wang <wangkefeng.wang@huawei.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
	"Vetter, Daniel" <daniel.vetter@intel.com>,
	opensource.kernel@vivo.com
References: <20240710135757.25786-1-liulei.rjpt@vivo.com>
 <5e5ee5d3-8a57-478a-9ce7-b40cab60b67d@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e5ee5d3-8a57-478a-9ce7-b40cab60b67d@amd.com>
X-Operating-System: Linux phenom 6.9.7-amd64 
X-Rspamd-Queue-Id: BF4B34416B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.175:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DZ2GX4DQ7JWUGVK4ZV4NZMJGWCLECZZ5
X-Message-ID-Hash: DZ2GX4DQ7JWUGVK4ZV4NZMJGWCLECZZ5
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Lei Liu <liulei.rjpt@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Matthew Wilcox <willy@infradead.org>, Muhammad Usama Anjum <usama.anjum@collabora.com>, Andrei Vagin <avagin@google.com>, Ryan Roberts <ryan.roberts@arm.com>, Kefeng Wang <wangkefeng.wang@huawei.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, Daniel Vetter <daniel@ffwll.ch>, "Vetter, Daniel" <daniel.vetter@intel.com>, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/2] Support direct I/O read and write for memory allocated by dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DZ2GX4DQ7JWUGVK4ZV4NZMJGWCLECZZ5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 10, 2024 at 04:14:18PM +0200, Christian K=F6nig wrote:
> Am 10.07.24 um 15:57 schrieb Lei Liu:
> > Use vm_insert_page to establish a mapping for the memory allocated
> > by dmabuf, thus supporting direct I/O read and write; and fix the
> > issue of incorrect memory statistics after mapping dmabuf memory.
>=20
> Well big NAK to that! Direct I/O is intentionally disabled on DMA-bufs.
>=20
> We already discussed enforcing that in the DMA-buf framework and this pat=
ch
> probably means that we should really do that.

Last time I looked dma_mmap doesn't guarantee that the vma end sup with
VM_SPECIAL, and that's pretty much the only reason why we can't enforce
this. But we might be able to enforce this at least on some architectures,
I didn't check for that ... if at least x86-64 and arm64 could have the
check, that would be great. So might be worth it to re-audit this all.

I think all other dma-buf exporters/allocators do only create VM_SPECIAL
vmas.
-Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
