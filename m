Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EE68F6344DD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 20:50:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 002AC3ED2C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 19:50:44 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id 5D80A3EC65
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 19:50:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Ikboz0C2;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.208.44) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f44.google.com with SMTP id z20so20603514edc.13
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 11:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IK8SDZ/jZDyLJEsuxR9xFz2htJfz3q3gT5kjSS+oWR4=;
        b=Ikboz0C29tilFV0hIGZnqAFHVvjMHxJd7InyRfuuUNzPVIQJVPxl+VrH7NhH/ytm4G
         RWtJ1mNRaTbK+4nxOJGwbeGTQd2rBQaylYCLcPR4p+roHyKFHeGySiCf7z6+9reUN/KE
         Z35zUt6yUcHWUuMbzpCmLZk16iNI+2Px8gy2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IK8SDZ/jZDyLJEsuxR9xFz2htJfz3q3gT5kjSS+oWR4=;
        b=HD6SHvQsuGvzWsEgkFxmilDCOUB3PWTn2/3+dUH/POw1eLnNMcQnwRce/ESLNonR3t
         71CFdxbKAnI8dNKS2JaiVH/9/42SjF8C6VXcC5COykFjLw+npJV6noYLlwm5PmJYUJWp
         6lIyiWQyI0gGBBu20lVljT4e1CaHLiRG6yurWLSK3VHcdqU1JJR10T+9ns7Nug3/zOUr
         06MR1O+4tHM5w7k01ncZWrJqGGyaFs3vy6qSwNuhIiWIhQ++9EiF7/LM/CYdNqaRasg6
         ajwBkqqvfIhJtbFVwE0j/GyOnr7k7IGSXO55Tk4YQhlg/z7spK3qZQLBIwU9UbpkMOS6
         MozA==
X-Gm-Message-State: ANoB5pnpbg8Am3IHKoEtqJxFKF2geG04GxNeSbPvAeiApiXcgT5SFcJ+
	XlEbsqNUEccWBJJqakwmJUPfla4qOwP5YX1XU14IYw==
X-Google-Smtp-Source: AA0mqf7XUsswVblhhNThn/Wsg7nr0LQvlQk2QY03yhXme2ouSPPWSkV9vt2apDAQVVRdw98Fl27y+13qz8Y7qsxsG1Q=
X-Received: by 2002:a05:6402:28a9:b0:461:f5ce:a478 with SMTP id
 eg41-20020a05640228a900b00461f5cea478mr22342384edb.304.1669146634381; Tue, 22
 Nov 2022 11:50:34 -0800 (PST)
MIME-Version: 1.0
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
 <Y30PDdsvHIJo5YHR@ziepe.ca> <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
 <Y30Z4VxT7Wdoc1Lc@ziepe.ca> <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
 <Y30kK6dsssSLJVgp@ziepe.ca>
In-Reply-To: <Y30kK6dsssSLJVgp@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 22 Nov 2022 20:50:23 +0100
Message-ID: <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Rspamd-Queue-Id: 5D80A3EC65
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.965];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:url,ffwll.ch:dkim,ziepe.ca:email,mail-ed1-f44.google.com:rdns,mail-ed1-f44.google.com:helo];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.44:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KAKUGURQFYFNR236IHD7LAMKY2XYDBCZ
X-Message-ID-Hash: KAKUGURQFYFNR236IHD7LAMKY2XYDBCZ
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KAKUGURQFYFNR236IHD7LAMKY2XYDBCZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 22 Nov 2022 at 20:34, Jason Gunthorpe <jgg@ziepe.ca> wrote:
> On Tue, Nov 22, 2022 at 08:29:05PM +0100, Daniel Vetter wrote:
> > You nuke all the ptes. Drivers that move have slightly more than a
> > bare struct file, they also have a struct address_space so that
> > invalidate_mapping_range() works.
>
> Okay, this is one of the ways that this can be made to work correctly,
> as long as you never allow GUP/GUP_fast to succeed on the PTEs. (this
> was the DAX mistake)

Hence this patch, to enforce that no dma-buf exporter gets this wrong.
Which some did, and then blamed bug reporters for the resulting splats
:-) One of the things we've reverted was the ttm huge pte support,
since that doesn't have the pmd_special flag (yet) and so would let
gup_fast through.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
