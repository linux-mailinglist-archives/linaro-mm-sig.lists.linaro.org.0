Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 401755573A5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 09:13:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6570E3F453
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 07:13:42 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by lists.linaro.org (Postfix) with ESMTPS id CE7C13EA44
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 07:13:37 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id y32so31781658lfa.6
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 00:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version;
        bh=HKFgy2ePSsWBd5WuvWRCAAgtGzNsGiovMzKJw9WuAWA=;
        b=YHqD16i1gy7q5AU1NQ3/V1N310bWjVPrieL93A3boF19PSadG6dWxkVlfmG842U47g
         74r/2zMgBXhaCoa8PyF27NUbb49451lSdYuvYHjO1SH4Z7CLaEO7qbFB8v5IYhWSq3in
         KAlV+lxQcrfa+6sMhYT/L1EEvAMQgiFeRS4Ppis5ftyOo2GJrVhQLlSIG4NkPzHWUcP0
         n5aIft2UUuStF45XBP1WPOoleMZ3qWKjk3iqQKtHYN7iDfelqf+/GRsPE5atiyleDAH6
         FLhnCHEU0i85+0ALhH3ZHYriyxt0/Wh58BDqsU/4rm1kv/x79LyFg0fQpqcCnbxFvr39
         M9HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version;
        bh=HKFgy2ePSsWBd5WuvWRCAAgtGzNsGiovMzKJw9WuAWA=;
        b=lBaJb6f97RIfyLhrc8sVob/Q5PiI+vcqRxNxeT/n9ifCAfmuMs5HoazvA474QYbeTR
         Cp0xTneZEkvEEmxliQd0cq6+9OGh3uwrxzTq0BgaisqdEVmrGDp/jSFUpNz/ugcunFbl
         wICCPsBFiaM6sJj3J2bncQ3oUUAGzsTriRawwxDgyY9i3w5Oxe+/Kx74memxnkVEd30r
         G1Gfcuj2HaAPMokoWgabjlTlO+qApBOE5ilqC4G/2ESzB0QDO57qoUseEnA8nd7G/45h
         +dQ64mA+PX7rmtLLnwHawi0mKghMUGnsR+BCEs+l5FawijgCSH5MY0q/oA0voSDgNrpl
         aMbg==
X-Gm-Message-State: AJIora/s54SwqwudC74jSfEOtmZHtzjiIVT39Pewlf5uPsJdf2u3QGz2
	zPH/lApZg7jRo2KIwFciE7I=
X-Google-Smtp-Source: AGRyM1tQKqOwQskRGxDVvZp5ecHNyZRyMLFkiEcuNVszS7TJ5maJeX2lgHeXtpbyA72kS7dUtzTlrQ==
X-Received: by 2002:a05:6512:3f15:b0:477:ce24:4e1f with SMTP id y21-20020a0565123f1500b00477ce244e1fmr4473530lfa.355.1655968416440;
        Thu, 23 Jun 2022 00:13:36 -0700 (PDT)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id q20-20020a2eb4b4000000b0025a6a8bdcc7sm1655874ljm.1.2022.06.23.00.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jun 2022 00:13:36 -0700 (PDT)
Date: Thu, 23 Jun 2022 10:13:26 +0300
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20220623101326.18beeab3@eldfell>
In-Reply-To: <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
	<YCuPhOT4GhY3RR/6@phenom.ffwll.local>
	<9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
	<CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
	<c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Message-ID-Hash: DWKOTVFLTCR67SL3UBUGAGUWMXHJ7C4J
X-Message-ID-Hash: DWKOTVFLTCR67SL3UBUGAGUWMXHJ7C4J
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Stone <daniel@fooishbar.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, Daniel Vetter <daniel@ffwll.ch>, "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DWKOTVFLTCR67SL3UBUGAGUWMXHJ7C4J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8374960892553737773=="

--===============8374960892553737773==
Content-Type: multipart/signed; boundary="Sig_/QmOTkLNi2kJF4_bkXoJdUR3";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/QmOTkLNi2kJF4_bkXoJdUR3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 23 Jun 2022 08:59:41 +0200
Christian K=C3=B6nig <christian.koenig@amd.com> wrote:

> The exporter isn't doing anything wrong here. DMA-buf are supposed to be=
=20
> CPU cached and can also be cache hot.

Hi,

what is that statement based on?

Were the (mandatory for CPU access) cpu_access_begin/end functions &
ioctls not supposed to ensure that CPU cache is up-to-date / CPU cache
is fully flushed out?


Thanks,
pq

--Sig_/QmOTkLNi2kJF4_bkXoJdUR3
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmK0EpYACgkQI1/ltBGq
qqcw7w//QVXYLoKhIBnGN34yEmHzycIRr1pys6yOt0O61O+o3mO+5B9sUxkiNZT7
AOtn1CRxJMBYC0sTSWhi6TZyN6MP0GW80CMGtCLmLCb8T19U7CBsBflVtc8e0aM8
GXiSbIW3BJEt2pXAUa+jVDeI7TyVjw6it6k21PVv6EV/iIR84BYuGZIBbOwRi/UU
A3aNvFyTfhbi5fHwZJxgkv6SLsRBgTkHnyAVOcJ90FJgz1mHYONcsZKGp6q77tAt
r9+jBo+5HWfPZSzAAcJg9tIGr77VNjq0YX/jj4R7MWd5Sb2EPFR0df3mXvIIQNR+
7LqslvdNaaQkfh23bcGXvtbOgceboy+DUj/rPvC0eHQnGUop/hTJySw9p6n7QU3Z
q8ubKBzmWllcwNhwnb/aun23LBuBh4Nx5RI+oxg8Bwz4uvMg9WK0cjGm+AInFLTU
+GmmjUw2NK7jLF13Iu8n+5Z2SsxjAojoIsKQSkdH1buFdEcQNp2lzZH8RjIAkOGC
4D5AQMl0t891tH0XXRWxC3HOGi1RdfS1NzgG/mrG41NLdCG/bq79xsP56cFVUceb
ACGl3uxrxlabcFxEiP9peR8ebtEnRn0ZCRcpd02RgIgsM7+jzuuOZ8EdBGBK+fVz
fuz2KKG0X7sQT/03x7Zbi0VQWf8SAR1C9JBkiJsLjvOkFBZV4Gc=
=WrtI
-----END PGP SIGNATURE-----

--Sig_/QmOTkLNi2kJF4_bkXoJdUR3--

--===============8374960892553737773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8374960892553737773==--
