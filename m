Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 79519366BCA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Apr 2021 15:06:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 979AA6686B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Apr 2021 13:06:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8346466871; Wed, 21 Apr 2021 13:06:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1380C6686F;
	Wed, 21 Apr 2021 13:06:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EE55966867
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Apr 2021 13:06:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DF6E56686F; Wed, 21 Apr 2021 13:06:00 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by lists.linaro.org (Postfix) with ESMTPS id 9AA1866867
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Apr 2021 13:05:59 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id r128so39763721lff.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Apr 2021 06:05:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=JmUkovJ4PF+YyKy/jY+0gRoy2D+XF6hMzgTd5ze+4xg=;
 b=GHoX4gek259C5yIXbW+bMRbYuyC/SmfGPllFZT/qrObV5BfZjJpccokt+xX6kSl3XE
 aiWEd+9gxLgKeoRpEboJg88G9KmLzrRCn9O1yDNOcBOb7G5LhD43MpD6cXf2BQKDxFXL
 cu1aYN26hXeu0Ffde6S72HRt9uhcJxSUvZlK5ZbO2iuqJMRvuoXrUsZZpc+nUgC0/jQI
 QeD97gxslGrhrm4Fm8WdL1Iz5VVS3JWJXmrrnnXlbOCKdHcz4u1nm6IzGmepx4TseTDs
 dbzyyWiownBgQ42mwuH9LWZHSuQbgA1QoBOPZd6qFuPqjoalpcouGXByhtX1fsHYjPqS
 uhRA==
X-Gm-Message-State: AOAM530rTRDQj5wkOrhezE4KphF9VTiuhVPCZCOnZIMH/AIV0rdDuXe8
 SwcxYfFp6482WwdAFLCZtwU=
X-Google-Smtp-Source: ABdhPJw2O58VpMVpU+gR1j223w9p5DmKGY1H7WzcXBxLkb3E7wEvrE/DzxeCxpyIHOSevNFox4N+Uw==
X-Received: by 2002:a19:e4a:: with SMTP id 71mr19781865lfo.218.1619010358462; 
 Wed, 21 Apr 2021 06:05:58 -0700 (PDT)
Received: from eldfell ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id b10sm199558ljr.109.2021.04.21.06.05.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Apr 2021 06:05:57 -0700 (PDT)
Date: Wed, 21 Apr 2021 16:05:46 +0300
From: Pekka Paalanen <ppaalanen@gmail.com>
To: <Peter.Enderborg@sony.com>
Message-ID: <20210421160546.7045245f@eldfell>
In-Reply-To: <cbde932e-8887-391f-4a1d-515e5c56c01d@sony.com>
References: <20210417163835.25064-1-peter.enderborg@sony.com>
 <YH6Xv00ddYfMA3Lg@phenom.ffwll.local>
 <176e7e71-59b7-b288-9483-10e0f42a7a3f@sony.com>
 <YH63iPzbGWzb676T@phenom.ffwll.local>
 <a60d1eaf-f9f8-e0f3-d214-15ce2c0635c2@sony.com>
 <YH/tHFBtIawBfGBl@phenom.ffwll.local>
 <cbde932e-8887-391f-4a1d-515e5c56c01d@sony.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: mhocko@suse.com, willy@infradead.org, neilb@suse.de,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 adobriyan@gmail.com, linaro-mm-sig@lists.linaro.org, shakeelb@google.com,
 rppt@kernel.org, samitolvanen@google.com, songmuchun@bytedance.com,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 christian.koenig@amd.com, guro@fb.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v5] dma-buf: Add DmaBufTotal counter in
	meminfo
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5121894367737045344=="
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

--===============5121894367737045344==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/T2Q=aDoIbEuzeKlHNow=Dcn"; protocol="application/pgp-signature"

--Sig_/T2Q=aDoIbEuzeKlHNow=Dcn
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 21 Apr 2021 10:37:11 +0000
<Peter.Enderborg@sony.com> wrote:

> On 4/21/21 11:15 AM, Daniel Vetter wrote:
> > On Tue, Apr 20, 2021 at 11:37:41AM +0000, Peter.Enderborg@sony.com wrot=
e: =20

> >> But I dont think they will. dma-buf does not have to be mapped to a pr=
ocess,
> >> and the case of vram, it is not covered in current global_zone. All of=
 them
> >> would be very nice to have in some form. But it wont change what the
> >> correct value of what "Total" is. =20
> > We need to understand what the "correct" value is. Not in terms of kern=
el
> > code, but in terms of semantics. Like if userspace allocates a GL textu=
re,
> > is this supposed to show up in your metric or not. Stuff like that. =20

> That it like that would like to only one pointer type. You need to know w=
hat
> you pointing at to know what it is. it might be a hardware or a other poi=
nter.

To clarify the GL texture example: a GL texture consumes "graphics
memory", whatever that is, but they are not allocated as dmabufs. So
they count for resource consumption, but they do not show up in your
counter, until they become exported. Most GL textures are never
exported at all. In fact, exporting GL textures is a path strongly
recommended against due to unsuitable EGL/GL API.

As far as I understand, dmabufs are never allocated as is. Dmabufs
always just wrap an existing memory allocation. So creating (exporting)
a dmabuf does not increase resource usage. Allocation increases
resource usage, and most allocations are never exported.

> If there is a limitation on your pointers it is a good metric to count th=
em
> even if you don't=C2=A0 know what they are. Same goes for dma-buf, they
> are generic, but they consume some resources that are counted in pages.

Given above, I could even argue that *dmabufs* do not consume
resources. They only reference resources that were already allocated
by some specific means (not generic). They might keep the resource
allocated, preventing it from being freed if leaked.

As you might know, there is no really generic "dmabuf allocator", not
as a kernel UAPI nor as a userspace library (the hypothetical Unix
Device Memory Allocator library notwithstanding).

So this kind of leaves the question, what is DmaBufTotal good for? Is
it the same kind of counter as VIRT in 'top'? If you know your
particular programs, you can maybe infer if VIRT is too much or not,
but for e.g. WebKitWebProcess it is normal to have 85 GB in VIRT and
it's not a problem (like I have, on this 8 GB RAM machine).


Thanks,
pq

--Sig_/T2Q=aDoIbEuzeKlHNow=Dcn
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmCAIyoACgkQI1/ltBGq
qqdgcA/+OU3upziPx5lqynmqoiFPG1bUHAZHL5yi5T2jmhfS7JPQT5Hkjv3wUtNe
1liYgsv2ATY/B6EPnwB85cH7mwBdWa2b20cbgld3yoUrTYbGVD6mG5C9xGwgnT/3
Yu7gABmOPTmnBwjYDpQm/C98QhWDTTeizPYUJzIeb36+Zf1cItMjUhG1dcokslp3
T0LcPJnttN5WKbmZCPVvAZJ02mWDx6/k6VYbT77NvSRJ+GPMZBL3wNxkY4hzMC4l
LAmZm2biGahXtgsG93kblsM4DjWppAti0ToJF9OQlnTdzeFWEm8OMuZMrDj7gT6X
MPfMDR3l+pmfB3VM6QeBxhWC6swl3RvWIEpti6gaHy/JcNdhuDYWuYBFVPosLxQV
zHEe+wXTuUoQyGtINR0F8aU+pgT7lHp6BBZxHbQyHlxoxo05mM7hSupHt1yFfY+U
vUvggaM50URJjG+t88DLyYaB0tX3APSkUY8wVuKB/vO3VYb3v9g+dgCN+GJBD4/q
Yqhjf7PWG3aHU6kwEWIJDHXiXOMKVZnALodzAloRck/vh4zs8QDgGE7MGDnj5NUI
GdPjTDK6xMx7Xhx0tlZgtkPhbiQdkhN+r0jqgeNlNm2VTUv/T6UerfWOkN9BlS2k
/6Es9bwDrvvL+MKC2XCylqSNRHQkDMmayMtymQCEIitRZLTYbVg=
=1pAh
-----END PGP SIGNATURE-----

--Sig_/T2Q=aDoIbEuzeKlHNow=Dcn--

--===============5121894367737045344==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

--===============5121894367737045344==--
