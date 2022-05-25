Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 05957533EED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 16:16:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 358763EE85
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 14:16:16 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by lists.linaro.org (Postfix) with ESMTPS id 5EE0A3EBFA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 14:16:11 +0000 (UTC)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-3003cb4e064so43583077b3.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 07:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=598sikrjYXNf9gR+bXjxuqcvriZ5gGSeCuJ05WXA9Eg=;
        b=njCb+jDlpLQHpdVWAHtRZ+6PLtnF+EvIvDeY4zRnj3fEBWZ1weE6T2dWnTfww+v8ch
         j+kiF1GzBY8J4EtAxnHfCdkFYjtfZT9lapZY4ExHd8OpMYFPhPxdyaHb7sP7tqBmA92B
         HOIeIaMUY23AzRVGbofc/MEJVc2WFxUu/mUff4zfMPCPrgJgi4F9zcjCaI4rkcqVVJlu
         n17/X44f+DheJlEkD3LZjlJFhmUP2UJkBU6V0ufRkqb9xKxQ/Gx7/DedpD4EkyXlkELr
         OqGarQtdrkheHRRwjzqaFqALT1vI5eb0Me5vsuAdBBYzV/BtE39TfxWA7/RHYtfPSmnu
         2OBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=598sikrjYXNf9gR+bXjxuqcvriZ5gGSeCuJ05WXA9Eg=;
        b=7WZjpil95jWdOYxiS64cnS/rtPlmiJW7MaHagYyneBFABb89ayAdSNs6GyiVAlcmHo
         vhkogWwJuT7gaq70heIUfu2qWElZ7yvXdoT598909V6PyY3dCq/C2wqXsrhbo1XCJ1yS
         lufuQyP/embXl9idO3Yqga+hG9Vz9J7lvi61s0cYMgxRBKBHbGyLGGl75dylNIuzCbES
         E2H487HcCiVwjKTlnUHctVLMthZ71VEhipGA611Na8S46reHQPXogUTSO5/W/Hg/OFAb
         QuX9k7t0KyWdrzT+OHM0bl7cicQHyq7ZNsd4KGvnIERbt/XG7X+rZFLVfvp//Xb7i6+w
         C0tw==
X-Gm-Message-State: AOAM533DLRb0iqSm2PD+TDi0D11r4zNXsfdJ2m0xTFv+TeFZCnR1+bOR
	0tLPyOYy2cqTcgkIPvwAWJldRr6Ja1whXiDAuffreA==
X-Google-Smtp-Source: ABdhPJxcajqaRuH443VA6TQFBYKMpaM1prIoqirimkYleEK88MLR05x6jQOk6gSrevQ8twERWeDdRawvtROXIYgDKOo=
X-Received: by 2002:a0d:d1c1:0:b0:2ff:cb6b:90cd with SMTP id
 t184-20020a0dd1c1000000b002ffcb6b90cdmr18218676ywd.385.1653488170926; Wed, 25
 May 2022 07:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220502163722.3957-1-christian.koenig@amd.com>
 <YnJQs1iusrBvpuMs@phenom.ffwll.local> <a01c7703-f7f7-f8ce-f80e-632a6fdcbbbe@gmail.com>
 <Ynkg81p6ADyZBa/L@phenom.ffwll.local> <a249c0c4-ee6c-bfb0-737b-eb6afae29602@amd.com>
 <Yo4pin1Js4KXs2HL@phenom.ffwll.local> <19808e9e-a5a6-c878-a2f7-5b33444f547d@mailbox.org>
 <Yo40X03axFXXN9/d@phenom.ffwll.local> <nR302DiNnOEkhrGg7TsRINiS2R-WuPiI2uJiERdMMaSUV9e_0xlX1eu1CzzhlCXJmJ-ss1BdkTSZ-XiEOnyMUTn6v3A_sb1jTkvAxfuS-f8=@emersion.fr>
In-Reply-To: <nR302DiNnOEkhrGg7TsRINiS2R-WuPiI2uJiERdMMaSUV9e_0xlX1eu1CzzhlCXJmJ-ss1BdkTSZ-XiEOnyMUTn6v3A_sb1jTkvAxfuS-f8=@emersion.fr>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 25 May 2022 15:15:59 +0100
Message-ID: <CAPj87rPW=YW8OnRyByJ_-6k3M9Oo7m7cTg88F8AF4TfudAjAJA@mail.gmail.com>
To: Simon Ser <contact@emersion.fr>
Message-ID-Hash: MUORAPZ55OYJPHMZB5674CWC62THA3IQ
X-Message-ID-Hash: MUORAPZ55OYJPHMZB5674CWC62THA3IQ
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, tvrtko.ursulin@linux.intel.com, daniels@collabora.com, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>, gustavo@padovan.org, Felix.Kuehling@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, sergemetral@google.com, tzimmermann@suse.de, alexander.deucher@amd.com, skhawaja@google.com, sumit.semwal@linaro.org, jason@jlekstrand.net, maad.aldabagh@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Tackling the indefinite/user DMA fence problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MUORAPZ55OYJPHMZB5674CWC62THA3IQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Wed, 25 May 2022 at 15:07, Simon Ser <contact@emersion.fr> wrote:
> On Wednesday, May 25th, 2022 at 15:51, Daniel Vetter <daniel@ffwll.ch> wrote:
> > > You can add that to the list of reasons why compositors need to stop
> > > using buffers with unsignaled fences. There's plenty of other reasons
> > > there already (the big one being that otherwise slow clients can slow
> > > down the compositor, even if the compositor uses a high priority context
> > > and the HW supports preemption).
> >
> >
> > Yeah that's tbh another reason why I think we shouldn't do umf as a
> > transparent thing - compositors need to get better anyway, so we might as
> > well take this as a chance to do this right.
>
> As a compositor dev, I agree -- we should definitely be smarter about
> this. Note, it would help a lot to have a good way to integrate the
> waits into a poll(2) event loop.

The same holds for Weston. We're currently working through a bunch of
internal infrastructure to be able to handle this. Mutter (aka GNOME)
is also really well-placed to be able to do this.

Having pollable waits would be really useful, but I don't think it's
essential. In my strawman I'm just waking up at the usual
just-before-repaint point and checking; if it doesn't make it for this
frame then we'll wait for the next frame. If someone submits buffers
which take 4 repaint periods to clear then we'll have 3 'unnecessary'
wakeups, but given the GPU is already slammed then it's not an
efficiency problem I don't think. (I don't know if all the other
compositor people share this view.)

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
