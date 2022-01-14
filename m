Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C96F48E1B8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 01:46:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 972A73ED97
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 00:45:59 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
	by lists.linaro.org (Postfix) with ESMTPS id 6A8C23ED97
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 00:45:55 +0000 (UTC)
Received: from mail-wm1-f50.google.com ([209.85.128.50]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1N8GAQ-1mCovS0Bqi-014DsF for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan
 2022 01:45:54 +0100
Received: by mail-wm1-f50.google.com with SMTP id q141-20020a1ca793000000b00347b48dfb53so4759794wme.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 16:45:53 -0800 (PST)
X-Gm-Message-State: AOAM533PXWHkIXwH8r9RqvKN4gvtmqgudCXbsSkyPpK5wrQET4ipx8I0
	bi/XkXNBCP7yz2d9TFSLW8B/TeXxR/RIQuMN0QE=
X-Google-Smtp-Source: ABdhPJwV4G3A5mpFnAW11HwlY/Tf7y1xRC36rwdQkkqDkkOWfKAxxiuv8Puk8O7tRRiiu1Ah39q+R3OAJUeOa6nnmfM=
X-Received: by 2002:a05:600c:287:: with SMTP id 7mr6081734wmk.98.1642121153661;
 Thu, 13 Jan 2022 16:45:53 -0800 (PST)
MIME-Version: 1.0
References: <20220113171921.17466-1-philippe.cornu@foss.st.com> <20220113171921.17466-2-philippe.cornu@foss.st.com>
In-Reply-To: <20220113171921.17466-2-philippe.cornu@foss.st.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 14 Jan 2022 01:45:37 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0Nn3fwEMtb9f0DZhbyY+mLva5XR332XfXqX=WSmB9a8w@mail.gmail.com>
Message-ID: <CAK8P3a0Nn3fwEMtb9f0DZhbyY+mLva5XR332XfXqX=WSmB9a8w@mail.gmail.com>
To: Philippe Cornu <philippe.cornu@foss.st.com>
X-Provags-ID: V03:K1:tWe0WB9fsS+Vkjg24kgF1y8w1V8Rc0I9+51z5rLQ5RdTmvOhd8o
 KKxHXJsB1shpOpS5Mh5KBFz5Wyz35EhXsl6Ec/zYvSx0ttQTH+b32hxRHCFmi1mEPCdRB/x
 431ysTNf843Ny37caKI/EMce2clvVKJ8BJ83Y1OXTci9cDsAkvykvAgSI0jxYw1cfINKflN
 ADdi8ujNXzLpl/+FVyPrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:41euyIFfdT8=:TYaIbYw/0gNsvou8pDQiPl
 D0OFQaqWJUNmSyqhjaRe6amUSwbRXa2DYAedqCnTJj4iBroloxS4iIu47dvnvc5g+Xx0A73zI
 ZhV814NVDVIEHYtnVhVmvFUxLGEQFxpbly0UGdcqd5e9RWqQu395lw51RzLoAdB4YKR5Tq2DQ
 drx6Pac52TvF+Fi3URrVh/7fOqc+21HgQsosy+qiavjHIHVv/G/hS7OEazyHXw4zMWwJWCSlT
 lWVKaQB3qQS6hN6AsNek2dsl8uiUo1e7A1v7nrmXw4DkO8/WmiTOlZiWi/9L/42M3vJrAfPvL
 KFD+xOqNfXhNIYYrvRr+ZN6cjb5aJ1oeQUh2D5FkuLKePwaa+o8JYmS9KwxFmJEgIk1tdLffQ
 GbH5L53yE4RYen2i5uj075o8UTuwPWgKp9Ld9UdcWEBSSIvb9PsxG9UtwwDhUZlklwtFMx26q
 5hNrKh0uTm3I0YSj+ftscTLvFFjOajWwPLOP2xZ7fCf6x/kB3RojPWFN/XUCAvAszQraNRorC
 vtzCIZDkmt6twOJFhMzxZD+v3O0ODjLZr+MbQ3V7jZkYa8mM6824Q/Pq0mjJxE2UqZ9LOMKHh
 +jG9gI6zY4u3zOs2KtCbOMO0p/IOEaA47rAliPd5F+qb/g9Zm/mU/Xb359grOA4nzg9pphdt3
 DEQ4BPVa9qs0mpU0ag4PGxdP3vINvN1wUh15IQ8Uoc5SxgOJXys5Z79ZMLZyN8s+8Gn8XL68q
 j3jASkEyKnM0xf+//4EL28LqZQg5MOFNlobK/xR447xRIUkCJxxwfY/g07yC0oHvpGL2181nj
 385S3W95OU6xlXuIgXDt8pfXvtDLnzLUGPvnJLNwnUonhg1AL4=
Message-ID-Hash: IDZ7AXLFXOYYEMIJFVKJ2KSZMI3JMCVB
X-Message-ID-Hash: IDZ7AXLFXOYYEMIJFVKJ2KSZMI3JMCVB
X-MailFrom: arnd@arndb.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Yannick Fertre <yannick.fertre@foss.st.com>, Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Alain Volmat <alain.volmat@foss.st.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Christian Konig <christian.koenig@amd.com>, SoC Team <soc@kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-stm32@st-md-mailman.stormreply.com, Linux ARM <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] MAINTAINERS: Update Benjamin Gaignard maintainer status
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IDZ7AXLFXOYYEMIJFVKJ2KSZMI3JMCVB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 13, 2022 at 6:19 PM Philippe Cornu
<philippe.cornu@foss.st.com> wrote:
>
>  DRM DRIVERS FOR STI
> -M:     Benjamin Gaignard <benjamin.gaignard@linaro.org>
>  L:     dri-devel@lists.freedesktop.org
>  S:     Maintained
>  T:     git git://anongit.freedesktop.org/drm/drm-misc

If there is no longer a maintainer, I suppose it should also be marked as

S: Orphaned

         Arnd
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
