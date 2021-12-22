Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFFB47D947
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 23:17:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C98A6105D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:17:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 346AD60E1B; Wed, 22 Dec 2021 22:17:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35B5D60DC1;
	Wed, 22 Dec 2021 22:17:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A928A60B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 22:17:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A51C660DC1; Wed, 22 Dec 2021 22:17:48 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id 9C68560B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 22:17:46 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id bm14so13973977edb.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 14:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ofS9l2qebwP/4iVIsemnUHzvM6pKNrDlGzoJ6fIi4zg=;
 b=GnhmZe1h6FTTH2nJh32MPELKTW7ojgKXikumoF92vVm8XujNXZdnZN0/d4zrgpJj/l
 jcI54ELsP9vg3li/ZgE4WKFEzI71oupPrTMs0+vIDhUe0qCtfleux6ZM3z+21hzn7zQr
 zujEh5K11y9nfS2dzepGCDKqUaEAtPDC1R1+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ofS9l2qebwP/4iVIsemnUHzvM6pKNrDlGzoJ6fIi4zg=;
 b=V677XfNcyexRXfevlyDHj7aDIOQACOutLlt63MofmbwxaKh0NXR8xpWteiUp9KZ08o
 doBeMNYlIW1Lk9DzMWBkcnnviwq+T5VxX+WWQucgxkNTWOkWYA9KTK0c74w3A+QrTmMz
 UFkN1ClGtvu99Gn0/QyaWfEbdoelCVAgpS3Fq0mnhnZzLGDR/EPm542i60lZ6N5J7ybg
 wHTegkhfjvp66+kAAITH+3JCHEVO78oyH+UA4NoE3dnwDUr60UZZ0+Qgy32mdPaiLGlX
 yYfi3HPINzlDue/esKrAZeAtpUYt+GzZZ6RwDuxuGwd7PBr4ofj71BNHpKIb04McPNzB
 s3UA==
X-Gm-Message-State: AOAM5339KYdYOqEQuts9n2pI7pMXhQ6EoZUyeE5uq8oaCL4u/BdAl7lS
 iHhPTBWvlQNIRYEy3qodf73XAQU/QBziPA==
X-Google-Smtp-Source: ABdhPJyKQZiPqbmCmMmzckiH9gys1Mq4AY8wyy4rqynP1muKZHFdKlWttPT4i3NqFoj/nb0zYSrwYg==
X-Received: by 2002:a17:906:580a:: with SMTP id
 m10mr3807993ejq.213.1640211465721; 
 Wed, 22 Dec 2021 14:17:45 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i6sm1305577edx.46.2021.12.22.14.17.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 14:17:45 -0800 (PST)
Date: Wed, 22 Dec 2021 23:17:43 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOkB0Jlc5KsHnEN@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <e8c7284f-e18e-0dcc-f0a2-3a1ad6222fd4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8c7284f-e18e-0dcc-f0a2-3a1ad6222fd4@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] completely rework the dma_resv semantic
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Dec 17, 2021 at 03:39:52PM +0100, Christian K=F6nig wrote:
> Hi Daniel,
> =

> looks like this is going nowhere and you don't seem to have time to revie=
w.
> =

> What can we do?

cc more people, you didn't cc any of the driver folks :-)

Also I did find some review before I disappeared, back on 10th Jan.

Cheers, Daniel

> =

> Thanks,
> Christian.
> =

> Am 07.12.21 um 13:33 schrieb Christian K=F6nig:
> > Hi Daniel,
> > =

> > just a gentle ping that you wanted to take a look at this.
> > =

> > Not much changed compared to the last version, only a minor bugfix in
> > the dma_resv_get_singleton error handling.
> > =

> > Regards,
> > Christian.
> > =

> > =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
