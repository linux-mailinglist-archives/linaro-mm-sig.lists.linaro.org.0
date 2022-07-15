Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1164958E7E7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 09:37:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A010402CE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 07:37:08 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	by lists.linaro.org (Postfix) with ESMTPS id 15B4A47ECE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jul 2022 13:32:44 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id f11so4414526pgj.7
        for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jul 2022 06:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YNVoyk6kiyretWQCyGpRkYDTZtsDnNVuxvv1fAqYuPs=;
        b=PH9Z8js+1KWPw9blh6biuBKaZU4U9c/q7QE6pD/DuC7HiDYxb0cDNl5J9kcU7Mi/NN
         bO848GLeit613u8Z1HDGybzA+nrLeI1Creo85O/hHYzXHcSSdOV0w9fOcTJgeI5kLGtF
         xEdYH+zonmkjUveEg488iTt5p/mefF2yVarVPesCdc660dFfHXugpe2F7xdfLJQRhVoX
         aj4XcN2KP/ZMFJUuRsc6K8mVStKRjvK4gCZbhunLQ7cHe5SfWnPZVLQZGQUaYIuktt5z
         I9rXXxX0+fcQ7hTseXzSOhPM2n+PsVYnEknHOzkHUKARjIP0WEw1hoAYiLGeN5o6pZFD
         h9vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YNVoyk6kiyretWQCyGpRkYDTZtsDnNVuxvv1fAqYuPs=;
        b=eeApnPDPo/Z1BUkvXLAsIa7epQiSILQWK+EjA3Dce5gMlMabSophim77iSWJtbz0u2
         5JpvcSeyanNjqQkwM/2fWHuGoewMnvONY8k4GO8HarOuLD8o34DS65EJVHCguWCOn6fN
         RhpsmERQTE0yZjuUtE86cRHOjqgccFWgCMBkmKy9NBqzUi/4bbbnp0pFbrsV9yjVTH5x
         SYjSh0eteMkN76GZoY6m+A6Jn76uAj22/x+Kl2k5SU3utZIWPXCwcmSCkoADkcofCCbz
         BNnImVxNsxW/tFJORAyQaV2TQgNpj5lWp4s0fjbMj7aqMElHMxOOaC8MZcKiTbyPpX+t
         RzLw==
X-Gm-Message-State: AJIora8xnwT8ORPEmF459jb0tDeqU1thwbnly4uteso28YbDjhpuGqMF
	cv4aQ8Ct4XClev3EY7wEVl5f4P3m3dMAAkqVjWc=
X-Google-Smtp-Source: AGRyM1t9GTp9rdO7SEllee28oAWWLFw6P4+BYyJCJP58heeVXuIAmRpquzkujzH6yilSD1SIVVILhokIZS7uJNMV9hg=
X-Received: by 2002:a62:6d05:0:b0:528:99a2:b10 with SMTP id
 i5-20020a626d05000000b0052899a20b10mr13829247pfc.72.1657891961187; Fri, 15
 Jul 2022 06:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220715132816.592657-1-f.suligoi@asem.it>
In-Reply-To: <20220715132816.592657-1-f.suligoi@asem.it>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 15 Jul 2022 10:32:28 -0300
Message-ID: <CAOMZO5CkiULcUonY5=ry0B1iDP6mv+gnjny8GpbEPeFmsd=qog@mail.gmail.com>
To: Flavio Suligoi <f.suligoi@asem.it>
X-MailFrom: festevam@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KWLTUG6RJT2BARKHJ6H6SIUQLDE6VL2J
X-Message-ID-Hash: KWLTUG6RJT2BARKHJ6H6SIUQLDE6VL2J
X-Mailman-Approved-At: Wed, 10 Aug 2022 07:37:05 +0000
CC: Oleksij Rempel <linux@rempel-privat.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] 2c: imx: fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KWLTUG6RJT2BARKHJ6H6SIUQLDE6VL2J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Flavio,

On Fri, Jul 15, 2022 at 10:28 AM Flavio Suligoi <f.suligoi@asem.it> wrote:
>
> to provid --> to provide

There is also a typo in the Subject line: 2c ---> i2c :-)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
