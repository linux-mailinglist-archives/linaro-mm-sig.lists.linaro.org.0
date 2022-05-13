Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D2D5266D0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 May 2022 18:13:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39FE6404DE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 May 2022 16:13:33 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by lists.linaro.org (Postfix) with ESMTPS id 0BA703EFA7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 May 2022 16:13:28 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id cx11-20020a17090afd8b00b001d9fe5965b3so11217066pjb.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 13 May 2022 09:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=n4Ua5qSAHgvrptVTXpgV4jY28Fp/1ApPJcGYkkazweE=;
        b=dh+CcTt4AjCORsqV1ZODlBqFq+OvMka9auOOZykOuG9GwHD05RDvn63lEcsItiN2eH
         nH+MkFBQ8v1tdeWUMN4BRvaW+7Q1uwmQiOctS5wPsQLKRk5Ykt9si+fUFSf6n/at1dmY
         4JOHexwRERxmPXQVd5EWv4mWhFA3BXiW4pCX0ZdVzHtYoUWHmurH8uIA0uBpYInyofFZ
         pNEuW8xEgDqjAmuzWH27jn+y85YMNek74F2xgDatREWDoXEvBkL4SnO/axBiM7vQgUS4
         gbWP9yrJI2fCACw+ngKTCewWFxR85tswkrdeT3TpOZ3UiGjOL9rgao5yscsrH/9y3/bl
         VBAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=n4Ua5qSAHgvrptVTXpgV4jY28Fp/1ApPJcGYkkazweE=;
        b=NteAuCuK/o2uzXgSrnQF04RebU9MFWj+x//eZhTZANTR6jRCg7oXoETSDiwW9jrTtf
         yAailgjk8b8WSmXU+qrY2ayJN3hfATM5xLHg/KzP/Vj2u6xAdmR9Ej4i9cKWc0uKD9A/
         1e2iqWaUu9qnJSnC6Tswm7HkB/nOAiY4IYEW6Lv8kTbe+1rjemtplX8WfSk1X+jXzbZa
         ApFKMNlqtd7fY3+pIYqT41I9o5dgY69qEESK4gwzjygxUAZUg9XZoNqfwgaklrj+UwTf
         1ppJVLrndTxRaMXmwzLUXvwBYN0X8ZnNac4yNaAsy6ETyoW3dIQsOEtrKapg9jGjAZsJ
         ue5Q==
X-Gm-Message-State: AOAM530L/FB7pxDVJ4128bS3oTIS48bGiMkP3HuYOLbp5FT0hngruZ18
	W4jjmKqI7rV0yHyIQNDWOko=
X-Google-Smtp-Source: ABdhPJx/E0j2BSOqlsmETv4JaHt8kQAXKtx8000l3ywPW9tmB75Cv/mYY002CdT2AqHaPSsO5Oy1mQ==
X-Received: by 2002:a17:90b:17c4:b0:1de:c92c:ad91 with SMTP id me4-20020a17090b17c400b001dec92cad91mr5642606pjb.169.1652458407026;
        Fri, 13 May 2022 09:13:27 -0700 (PDT)
Received: from localhost ([2620:10d:c090:400::4:5607])
        by smtp.gmail.com with ESMTPSA id ip14-20020a17090b314e00b001d81a30c437sm1796573pjb.50.2022.05.13.09.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 09:13:26 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 13 May 2022 06:13:25 -1000
From: Tejun Heo <tj@kernel.org>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <Yn6DpUsoSz1/15Kc@slm.duckdns.org>
References: <20220510235653.933868-1-tjmercier@google.com>
 <3365cd1d750e84fedc8e75d646a77ffd85619d35.camel@ndufresne.ca>
 <CABdmKX3ZV6-u-oLvW_wWavAMBfrsZ=C_rCgK_Uz4VjxcRvRFew@mail.gmail.com>
 <81026ef07c1ce20f8673b75b17bab79a2b39c548.camel@ndufresne.ca>
 <CABdmKX2LxZ6zZR=fhXfnuWCB2BR+gzDd1-t1DD2A2XP24wvuGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABdmKX2LxZ6zZR=fhXfnuWCB2BR+gzDd1-t1DD2A2XP24wvuGQ@mail.gmail.com>
Message-ID-Hash: CL6LGGCD26FCWM6QJMSDQ2S4TS2XHHR7
X-Message-ID-Hash: CL6LGGCD26FCWM6QJMSDQ2S4TS2XHHR7
X-MailFrom: htejun@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Shuah Khan <shuah@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, John Stultz <jstultz@google.com>, Carlos Llamas <cmllamas@google.com>, Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, Michal =?iso-8859-1?Q?
 Koutn=FD?= <mkoutny@suse.com>, Shuah Khan <skhan@linuxfoundation.org>, kernel-team@android.com, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/6] Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CL6LGGCD26FCWM6QJMSDQ2S4TS2XHHR7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

On Thu, May 12, 2022 at 08:43:52PM -0700, T.J. Mercier wrote:
> > I'm actually happy I've asked this question, wasn't silly after all. I think the
> > problem here is a naming issue. What you really are monitor is "video memory",
> > which consist of a memory segment allocated to store data used to render images
> > (its not always images of course, GPU an VPU have specialized buffers for their
> > purpose).
> >
> > Whether this should be split between what is used specifically by the GPU
> > drivers, the display drivers, the VPU (CODEC and pre/post-processor) or camera
> > drivers is something that should be discussed. But in the current approach, you
> > really meant Video memory as a superset of the above. Personally, I think
> > generically (to de-Andronized your work), en-globing all video memory is
> > sufficient. What I fail to understand is how you will manage to distinguished
> > DMABuf Heap allocation (which are used outside of Android btw), from Video
> > allocation or other type of usage. I'm sure non-video usage will exist in the
> > future (think of machine learning, compute, other high bandwidth streaming
> > thingy ...)
> >
> Ok thank you for pointing out the naming issue. The naming is a
> consequence of the initial use case, but I guess it's too specific.
> What I want out of this change is that android can track dmabufs that
> come out of heaps, and drm can track gpu memory. But other drivers
> could track different resources under different names. Imagine this
> were called a buffer cgroup controller instead of a GPU cgroup
> controller. Then the use component ("video memory") isn't tied up with
> the name of the controller, but it's up to the name of the bucket the
> resource is tracked under. I think this meets the needs of the two use
> cases I'm aware of now, while leaving the door open to other future
> needs. Really the controller is just enabling abstract named buckets
> for tracking and eventually limiting a type of resource.

So, there hasn't been whole lot of discussion w/ other GPU folks and what
comes up still seems to indicate that we're still long way away from having
a meaningful gpu controller. For your use case, would it make sense to just
add dmabuf as a key to the misc controller? I'm not sure it makes sense to
push "gpu controller" forward if there's no conceptual consensus around what
resources are.

Thanks.

-- 
tejun
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
