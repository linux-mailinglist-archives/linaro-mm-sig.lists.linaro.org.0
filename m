Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FDC41D7BA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Sep 2021 12:29:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13312619C8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Sep 2021 10:29:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 78F0D6242A; Thu, 30 Sep 2021 10:29:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EEC3B61014;
	Thu, 30 Sep 2021 10:29:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 751B761A4B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Sep 2021 10:21:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 790926A9B0; Mon, 27 Sep 2021 08:42:14 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by lists.linaro.org (Postfix) with ESMTPS id 633916A967
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Sep 2021 08:42:12 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id i25so74438922lfg.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Sep 2021 01:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=1BG0A7psUXeGAUQUvHgRgao8dcZIRyXeRNw4ym7V7hQ=;
 b=YUkw8+PzjqCIs3sdkd0kJKxzjL53C40Ukx8I5yuZZPCkVvKLn/Nq8tvO+VpJy4+noU
 Y7aNcUkEHDjA+8NCOHX5tS9F59FkKqaUmnO6M9c0V5LLVCDJ420UfA0kw9g8+x6ZBcvP
 O2DLhwYba4pe5bZLLuhzKcRu4rfojLvcGdHWSX0ybYwlLFJnjKG9qj0GBAwhPvWFBK8J
 HZcPHBJU5LnxF6Sp4dM47l0PxoTKzzHU0VIcj145UDhpKXBCGjRd2FyHsGhoDoRqQLAW
 F+Cb3oqtlf7Rxn0VjMiObE/sBZAOLzmnU/7ajAEuwLOCtuUpWvffiLF8lsml2VKY19Wj
 di1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=1BG0A7psUXeGAUQUvHgRgao8dcZIRyXeRNw4ym7V7hQ=;
 b=Pz9WCNXpi9X+sExSc6iZiBj5I1R8c7jxttZZZcaoc7fUtmxTnmxBoA+SO9e3o9jp6n
 MtY9VP1a7kfLFsFn76L6fXsSYmsWxvyKRGCaDiFW5j+QutHUBYrygKJCMsa7pWPn85h7
 gZtdEZ7kS4VIi8RKbaZBgsM471kf/ve4oGbogTBOyso01DgIdcfcYDiQuqeDATzskwnC
 IoD3eE0K3lq4CY4ij3m3UYhdFUGYd0IGxLj5YSH+yZevMRY4Y3WVOXKOpbx16lnCdplb
 qn94ivaODPE9obR8M5ZHfWtCPkSGXD61yoilaJKZsuwz+ZFSiiHsiAyNHsrU+EUSfpPT
 cqVQ==
X-Gm-Message-State: AOAM53037TDqJupfnwb4hLVQptVdpJo5YacrFBYni2oLsAk0mBMMZhM9
 81mxbr8m/iyMp4J7EiZYVEY=
X-Google-Smtp-Source: ABdhPJz9IEdgS3tt3ObWODiNcVsXRujmPf+tYf3g2mh+Z4t7iY4w5zOjn9nOjTj61PF93sYD/eTBmg==
X-Received: by 2002:ac2:4c52:: with SMTP id o18mr22119107lfk.108.1632732131214; 
 Mon, 27 Sep 2021 01:42:11 -0700 (PDT)
Received: from eldfell ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id v1sm1529371lfp.215.2021.09.27.01.42.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Sep 2021 01:42:10 -0700 (PDT)
Date: Mon, 27 Sep 2021 11:42:01 +0300
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <20210927114201.1f8fdc17@eldfell>
In-Reply-To: <20210903184806.1680887-9-robdclark@gmail.com>
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-9-robdclark@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 8/9] dma-buf/sync_file: Add
 SET_DEADLINE ioctl
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Clark <robdclark@chromium.org>,
 Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>,
 Gustavo Padovan <gustavo@padovan.org>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============0359925614865525873=="
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

--===============0359925614865525873==
Content-Type: multipart/signed; boundary="Sig_/Ae3zq/xxfd0mOmS+IV/YXES";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/Ae3zq/xxfd0mOmS+IV/YXES
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri,  3 Sep 2021 11:47:59 -0700
Rob Clark <robdclark@gmail.com> wrote:

> From: Rob Clark <robdclark@chromium.org>
>=20
> The initial purpose is for igt tests, but this would also be useful for
> compositors that wait until close to vblank deadline to make decisions
> about which frame to show.
>=20
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  drivers/dma-buf/sync_file.c    | 19 +++++++++++++++++++
>  include/uapi/linux/sync_file.h | 20 ++++++++++++++++++++
>  2 files changed, 39 insertions(+)
>=20
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index 394e6e1e9686..f295772d5169 100644
> --- a/drivers/dma-buf/sync_file.c
> +++ b/drivers/dma-buf/sync_file.c
> @@ -459,6 +459,22 @@ static long sync_file_ioctl_fence_info(struct sync_f=
ile *sync_file,
>  	return ret;
>  }
> =20
> +static int sync_file_ioctl_set_deadline(struct sync_file *sync_file,
> +					unsigned long arg)
> +{
> +	struct sync_set_deadline ts;
> +
> +	if (copy_from_user(&ts, (void __user *)arg, sizeof(ts)))
> +		return -EFAULT;
> +
> +	if (ts.pad)
> +		return -EINVAL;
> +
> +	dma_fence_set_deadline(sync_file->fence, ktime_set(ts.tv_sec, ts.tv_nse=
c));
> +
> +	return 0;
> +}
> +
>  static long sync_file_ioctl(struct file *file, unsigned int cmd,
>  			    unsigned long arg)
>  {
> @@ -471,6 +487,9 @@ static long sync_file_ioctl(struct file *file, unsign=
ed int cmd,
>  	case SYNC_IOC_FILE_INFO:
>  		return sync_file_ioctl_fence_info(sync_file, arg);
> =20
> +	case SYNC_IOC_SET_DEADLINE:
> +		return sync_file_ioctl_set_deadline(sync_file, arg);
> +
>  	default:
>  		return -ENOTTY;
>  	}
> diff --git a/include/uapi/linux/sync_file.h b/include/uapi/linux/sync_fil=
e.h
> index ee2dcfb3d660..f67d4ffe7566 100644
> --- a/include/uapi/linux/sync_file.h
> +++ b/include/uapi/linux/sync_file.h
> @@ -67,6 +67,18 @@ struct sync_file_info {
>  	__u64	sync_fence_info;
>  };
> =20
> +/**
> + * struct sync_set_deadline - set a deadline on a fence
> + * @tv_sec:	seconds elapsed since epoch
> + * @tv_nsec:	nanoseconds elapsed since the time given by the tv_sec
> + * @pad:	must be zero

Hi Rob,

I think you need to specify which clock this timestamp must be in.

Which epoch? Sounds a bit like CLOCK_REALTIME to me which would not
make sense.

Also I cannot guess how a compositor should be using this, so
explaining the expected usage would be really good, with reasons for
why should userspace bother.


Thanks,
pq

> + */
> +struct sync_set_deadline {
> +	__s64	tv_sec;
> +	__s32	tv_nsec;
> +	__u32	pad;
> +};
> +
>  #define SYNC_IOC_MAGIC		'>'
> =20
>  /**
> @@ -95,4 +107,12 @@ struct sync_file_info {
>   */
>  #define SYNC_IOC_FILE_INFO	_IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_inf=
o)
> =20
> +
> +/**
> + * DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence
> + *
> + * Allows userspace to set a deadline on a fence, see dma_fence_set_dead=
line()
> + */
> +#define SYNC_IOC_SET_DEADLINE	_IOW(SYNC_IOC_MAGIC, 5, struct sync_set_de=
adline)
> +
>  #endif /* _UAPI_LINUX_SYNC_H */


--Sig_/Ae3zq/xxfd0mOmS+IV/YXES
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmFRg9kACgkQI1/ltBGq
qqerWg//URIwzyumTcB8NXNy0zbIi4YZDXfe6dn9jZvFT+6n4Gdze1shYvrcxMli
32IX5GxFXHhKZcjH4ugvlN3PJ+yn1IwuxJ7W2eCkj/IRPHWe8xvgvzzv/VWKhriW
g9tYOOkEtD4z31Gl2pBV9c3I9wSot2mpToMHQcx2Df0QZmyXqol5QbX6SkcZsIL8
tCsuYY9tpe2v91NpMEFZtJEmIuDezKh6JEy3djZ+Jd3LB0aFCRuH3ewKYaxpRH+9
f9qrpzIe/1r1bu2t/y/YQSg/HhaX38TKcNme7hyc60k2b31RJU/LkyCrjBYt7wua
qXCr/7ZYJF4kELTuDKAkhdeX4dtI8ijD9VVjlqsm22pPiNlzIulMtkrTXwGGHaA1
QqiunoZOzdXO3PDA6ogOkEnjjWQJPLIiQC7DJ1F9fffy0AnbHvyOAREt1ETlZ+lE
GDufS931n4Cwv4TXpoMNeDeKrVjd/VMfP+cvG/gyitBDqKH5L75boTdJKXGFUZmW
I2SrhTkQ36n4eoeujHr6ed5E2WAye3rhCZbwkMIE39RE2x8FIHm954DXI4Jj9if1
MHmbrWR5/btLEJt1yldy07+zfFSr3xQiCEAA8q1ZXULRPzbXwa2JuWrjsOHuUjQv
bDi20VmhLKrjDNUBtg8Su1s+u+fpv9iDhsIoCBLIEMAFbe2b+70=
=jyP1
-----END PGP SIGNATURE-----

--Sig_/Ae3zq/xxfd0mOmS+IV/YXES--

--===============0359925614865525873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

--===============0359925614865525873==--
