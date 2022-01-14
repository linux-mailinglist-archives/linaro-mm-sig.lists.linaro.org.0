Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E6748EE46
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 17:35:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A0993EE02
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 16:35:31 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id A112B3ECAA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 16:35:03 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id l4so7142680wmq.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 08:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=zGlBq5g8ptXdKqtDPcUnhTEEW/MEdyIn3q+yGm9ho3g=;
        b=ckXWl+PtxcOsT0oSIvB6y5mLpkZddQA/u3ayFbKYoRbW1fj6yKJ6DCV9Y3nGdmuuYw
         lUwY6qhx2wx/nUfw61/7J3Q1EebwAmtRIa92UFg2MxoZZjMlswrP8NwJN+g1Le4ca09B
         LWcsVXQzyXmD5eHETwtBpuXNQ2fadfoX0HTMA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=zGlBq5g8ptXdKqtDPcUnhTEEW/MEdyIn3q+yGm9ho3g=;
        b=1MANe5tE4xztDV3jv2z3ppvsLOu7LQRCmuMKtU6cYFLXNVItd2oCvouLrhraz2UjWO
         Y/2dsCz+x4xLoVNd2c2sRe9BnpwQn6e1fymsCb2l9CvNJcGE5JEZg8oEsvZkcVLFXPGD
         ESgoU0zIrGiFRNr83q2JPQCm4Scgbuvs8lPWm2jAWYH97vLlpli34l7OUivObsTISCaR
         ogvfsQ2XJDuDw3mh61iCzIWZ3Mz3Dm+AD5hmj10MTsiuLMB4Qib8tDoQrv4kzBolLAnV
         a1oTuSzXcsjm9s3HRdEpvNrxBAKkB1eKh+VGUr4Yjg5HZhdgWsRFQh9AkFZC4fKLTgEF
         siXA==
X-Gm-Message-State: AOAM530TGon+RfxJ8su6qRWJHCLNx0SZ9bA4agiz4bTMjxL9pt3KeMah
	J/rFx3hxA7VXB01rgjcNW1r4IA==
X-Google-Smtp-Source: ABdhPJyJ3GXKxktqyZcpdYltCojGpZn7yTTN1XfRK3SbwOwOd76JQriZwRXbLy+Jcv1d26j6z74Nnw==
X-Received: by 2002:a05:600c:3b0e:: with SMTP id m14mr16041188wms.130.1642178102656;
        Fri, 14 Jan 2022 08:35:02 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id o38sm6350798wms.11.2022.01.14.08.35.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jan 2022 08:35:02 -0800 (PST)
Date: Fri, 14 Jan 2022 17:35:00 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YeGmNGuKtNDYNmsj@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <e8c7284f-e18e-0dcc-f0a2-3a1ad6222fd4@gmail.com>
 <YcOkB0Jlc5KsHnEN@phenom.ffwll.local>
 <c63e62cc-e48e-2e81-571c-498e4d16fd21@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c63e62cc-e48e-2e81-571c-498e4d16fd21@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: 2YJLMDDAFSWBCVNKI7MRB2EHFEVWBX4I
X-Message-ID-Hash: 2YJLMDDAFSWBCVNKI7MRB2EHFEVWBX4I
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: completely rework the dma_resv semantic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2YJLMDDAFSWBCVNKI7MRB2EHFEVWBX4I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 23, 2021 at 10:11:20AM +0100, Christian K=F6nig wrote:
> Am 22.12.21 um 23:17 schrieb Daniel Vetter:
> > On Fri, Dec 17, 2021 at 03:39:52PM +0100, Christian K=F6nig wrote:
> > > Hi Daniel,
> > >=20
> > > looks like this is going nowhere and you don't seem to have time to r=
eview.
> > >=20
> > > What can we do?
> > cc more people, you didn't cc any of the driver folks :-)
>=20
> Well I've CCed more people and lists and the first round of the patches.
> Just wanted to get some more comments from you first before widening the
> audience.

Ime it's good to just always spam driver authors on big stuff like this,
increases the odds more folks get involved. And in the end we need the
entire subsystem to understand this (or at least not accidentally break
the rules you roll out now like we've done in the past).

Plus you'll get the driver acks faster that way :-)
-Daniel


> > Also I did find some review before I disappeared, back on 10th Jan.
>=20
> Good, then I have at least something todo for the first week on January.
>=20
> Happy holidays,
> Christian.
>=20
> >=20
> > Cheers, Daniel
> >=20
> > > Thanks,
> > > Christian.
> > >=20
> > > Am 07.12.21 um 13:33 schrieb Christian K=F6nig:
> > > > Hi Daniel,
> > > >=20
> > > > just a gentle ping that you wanted to take a look at this.
> > > >=20
> > > > Not much changed compared to the last version, only a minor bugfix =
in
> > > > the dma_resv_get_singleton error handling.
> > > >=20
> > > > Regards,
> > > > Christian.
> > > >=20
> > > >=20
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
