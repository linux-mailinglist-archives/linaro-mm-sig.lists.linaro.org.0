Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8C26A5FCA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 20:38:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B9F344245
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 19:38:30 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	by lists.linaro.org (Postfix) with ESMTPS id 40E9A3ED3C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 19:38:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=YtdcuiZx;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-172334d5c8aso12049521fac.8
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 11:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677613088;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PVieRPuEMOm+nHzPuq4QMxD7wCV7l2uEG4OOeeLhgTo=;
        b=YtdcuiZxfo3pvq1EBxEjMVDJt7xsOjpqKK7yjHlMcKGm6zRNFa8DLgbRUNG4TbT9y8
         XBtvslNJByhKIrCLCJ23dQtmvnnfDLVDIhXj9f4NY/5OOBLv/Ytd1iSF79T3BzW5W7gf
         RyWZgAVw7X/hmAyac+viOivzUgUIbQfEsDOripCar4FpJ2USzdD75I/gsz34YJuJsqKd
         zfv+jcd7iZL9mLzhuXjg9fWxY8yszD6D0pDwdFXqwUcZQ9RUrilpBISJTAytSXVEF2Mo
         vsBsKEdDYIyfnZXBwZPog4D0jmkYANALCDhl7UVWnQDtkfLNVfzJXZ/SzceH9dd0BMUJ
         cojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677613088;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PVieRPuEMOm+nHzPuq4QMxD7wCV7l2uEG4OOeeLhgTo=;
        b=nARGaodGIrBqbh/B6K5V4iMe6+p1Gz03hXohOCdNEBmTC1/OBW6nDF5XT0ACuGR9oj
         vF16ZW7F759TLIiSnpg6g45PHQETJs3fSdWzcaMIjILJI/tTgW3vkMVPP9U1JnDmYAMK
         MXZLwXamJLfyhwgZXCBwkZm5ueo4oR1D8VCxYnb4sbIvegBvZhGAze9K+5gUVasF6O8v
         NCWfqfc2ULCFuDV0onoCnux1VQBIB38DC4Q9s3jJSfHI8DxtoLc0eRfasIXcx+mfTApQ
         hsOVpXYq5gr/nm00XQDZwHXVdcmYEjAduWe5jWTdMm1Nbn8fpaBvTOiV7hHZtnRJlznJ
         mFyw==
X-Gm-Message-State: AO0yUKXccuWGbIMS1q43uDz1cISPml/mvMD77SsgHe3tSO/HSVrAPpAj
	xdQQV4IiBMvhumSBBYASR+TZkZQHJvLpkOq1zKk=
X-Google-Smtp-Source: AK7set8/X1E/XPetbsmctxmF0pvmxBCTcKKMQYCtY5r6xSJk5qanEEVUtccQFCDLkVD6xABYiPhsKBl7fbBep2x+JN4=
X-Received: by 2002:a05:6871:6a9e:b0:16e:873e:b06b with SMTP id
 zf30-20020a0568716a9e00b0016e873eb06bmr869979oab.3.1677613088636; Tue, 28 Feb
 2023 11:38:08 -0800 (PST)
MIME-Version: 1.0
References: <20230227193535.2822389-1-robdclark@gmail.com> <20230227193535.2822389-6-robdclark@gmail.com>
 <20230228112215.6d3f1f3d@eldfell>
In-Reply-To: <20230228112215.6d3f1f3d@eldfell>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 28 Feb 2023 11:37:57 -0800
Message-ID: <CAF6AEGt01HQ7kJmTWrycwDG=Rc_vy1dQ+SPFeX7vD19e+69hBw@mail.gmail.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 40E9A3ED3C
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.160.45:from];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.45:from];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: S2RUK6D5CLWT3F64KHHREVIP2WWE4NJA
X-Message-ID-Hash: S2RUK6D5CLWT3F64KHHREVIP2WWE4NJA
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 05/15] dma-buf/sync_file: Add SET_DEADLINE ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S2RUK6D5CLWT3F64KHHREVIP2WWE4NJA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Feb 28, 2023 at 1:22 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>
> On Mon, 27 Feb 2023 11:35:11 -0800
> Rob Clark <robdclark@gmail.com> wrote:
>
> > From: Rob Clark <robdclark@chromium.org>
> >
> > The initial purpose is for igt tests, but this would also be useful for
> > compositors that wait until close to vblank deadline to make decisions
> > about which frame to show.
> >
> > The igt tests can be found at:
> >
> > https://gitlab.freedesktop.org/robclark/igt-gpu-tools/-/commits/fence-deadline
> >
> > v2: Clarify the timebase, add link to igt tests
> > v3: Use u64 value in ns to express deadline.
> > v4: More doc
> >
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > ---
> >  drivers/dma-buf/dma-fence.c    |  3 ++-
> >  drivers/dma-buf/sync_file.c    | 19 +++++++++++++++++++
> >  include/uapi/linux/sync_file.h | 22 ++++++++++++++++++++++
> >  3 files changed, 43 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> > index e103e821d993..7761ceeae620 100644
> > --- a/drivers/dma-buf/dma-fence.c
> > +++ b/drivers/dma-buf/dma-fence.c
> > @@ -933,7 +933,8 @@ EXPORT_SYMBOL(dma_fence_wait_any_timeout);
> >   *   the GPU's devfreq to reduce frequency, when in fact the opposite is what is
> >   *   needed.
> >   *
> > - * To this end, deadline hint(s) can be set on a &dma_fence via &dma_fence_set_deadline.
> > + * To this end, deadline hint(s) can be set on a &dma_fence via &dma_fence_set_deadline
> > + * (or indirectly via userspace facing ioctls like &SYNC_IOC_SET_DEADLINE).
> >   * The deadline hint provides a way for the waiting driver, or userspace, to
> >   * convey an appropriate sense of urgency to the signaling driver.
>
> Hi,
>
> when the kernel HTML doc is generated, I assume the above becomes a
> link to "DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence", right?

Heh, kernel docs completely miss the sync_file uABI.. I'll add a patch
to correct that in order to make these links work properly.

BR,
-R

> >   *
> > diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> > index af57799c86ce..418021cfb87c 100644
> > --- a/drivers/dma-buf/sync_file.c
> > +++ b/drivers/dma-buf/sync_file.c
> > @@ -350,6 +350,22 @@ static long sync_file_ioctl_fence_info(struct sync_file *sync_file,
> >       return ret;
> >  }
> >
> > +static int sync_file_ioctl_set_deadline(struct sync_file *sync_file,
> > +                                     unsigned long arg)
> > +{
> > +     struct sync_set_deadline ts;
> > +
> > +     if (copy_from_user(&ts, (void __user *)arg, sizeof(ts)))
> > +             return -EFAULT;
> > +
> > +     if (ts.pad)
> > +             return -EINVAL;
> > +
> > +     dma_fence_set_deadline(sync_file->fence, ns_to_ktime(ts.deadline_ns));
> > +
> > +     return 0;
> > +}
> > +
> >  static long sync_file_ioctl(struct file *file, unsigned int cmd,
> >                           unsigned long arg)
> >  {
> > @@ -362,6 +378,9 @@ static long sync_file_ioctl(struct file *file, unsigned int cmd,
> >       case SYNC_IOC_FILE_INFO:
> >               return sync_file_ioctl_fence_info(sync_file, arg);
> >
> > +     case SYNC_IOC_SET_DEADLINE:
> > +             return sync_file_ioctl_set_deadline(sync_file, arg);
> > +
> >       default:
> >               return -ENOTTY;
> >       }
> > diff --git a/include/uapi/linux/sync_file.h b/include/uapi/linux/sync_file.h
> > index ee2dcfb3d660..49325cf6749b 100644
> > --- a/include/uapi/linux/sync_file.h
> > +++ b/include/uapi/linux/sync_file.h
> > @@ -67,6 +67,21 @@ struct sync_file_info {
> >       __u64   sync_fence_info;
> >  };
> >
> > +/**
> > + * struct sync_set_deadline - set a deadline hint on a fence
> > + * @deadline_ns: absolute time of the deadline
>
> Is it legal to pass zero as deadline_ns?
>
> > + * @pad:     must be zero
> > + *
> > + * The timebase for the deadline is CLOCK_MONOTONIC (same as vblank)
>
> Does something here provide doc links to "DOC: SYNC_IOC_SET_DEADLINE -
> set a deadline on a fence" and to the "DOC: deadline hints"?
>
> > + */
> > +struct sync_set_deadline {
> > +     __u64   deadline_ns;
> > +     /* Not strictly needed for alignment but gives some possibility
> > +      * for future extension:
> > +      */
> > +     __u64   pad;
> > +};
> > +
> >  #define SYNC_IOC_MAGIC               '>'
> >
> >  /**
> > @@ -95,4 +110,11 @@ struct sync_file_info {
> >   */
> >  #define SYNC_IOC_FILE_INFO   _IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_info)
> >
> > +/**
> > + * DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence
> > + *
> > + * Allows userspace to set a deadline on a fence, see dma_fence_set_deadline()
>
> Does something here provide doc links to struct sync_set_deadline and
> to the "DOC: deadline hints"?
>
> > + */
> > +#define SYNC_IOC_SET_DEADLINE        _IOW(SYNC_IOC_MAGIC, 5, struct sync_set_deadline)
> > +
> >  #endif /* _UAPI_LINUX_SYNC_H */
>
> With all those links added:
> Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
>
>
> Thanks,
> pq
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
