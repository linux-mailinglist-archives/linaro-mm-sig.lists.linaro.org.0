Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B234379A8E0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:46:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B67483E917
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:46:46 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by lists.linaro.org (Postfix) with ESMTPS id B00683EE30
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 08:35:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=DwimSEDV;
	spf=pass (lists.linaro.org: domain of onion0709@gmail.com designates 209.85.216.43 as permitted sender) smtp.mailfrom=onion0709@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-262dc1ced40so3816761a91.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 01:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689669305; x=1692261305;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eMpOX6C6FYtAsj4g5lQl10VVb5hvzXz095FozRIR5PU=;
        b=DwimSEDVkIBfU0qaTsE+yPx0nYQT1QCX0UKdyX+stGt2gKMdLu0KxOsi+hCOgdWDnC
         ejUUJCFRbmMnoaBjAJuuZmDg45yXpoguxMzhG0OFw6yICEBHdMqGTuV3i5/7AXXkmtM2
         EMJsdQLhmAM5NEMO2yjL7sAkrvao6vMvnnLE8Ub3FAjDDR65QsRnqs+puQSHxFlJnKyv
         +1kUvk7zLDLOQ/rYuKjv27id8UPUTTFj9R9L9mR2An7OBaz8hL6IgwygCvucSU9Gyd2B
         RNrosT75Xwnnyt+R1FWxBbab7NHxpIPw/MJJ9QdXZoM2aRr3f72TLZ4hm40DtvLUE2hn
         J1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689669305; x=1692261305;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eMpOX6C6FYtAsj4g5lQl10VVb5hvzXz095FozRIR5PU=;
        b=FjtgH8aoLaSBQSoo7VWAm3bxrJXAHNjjjN95WvyF9ZdWkwUnRRrOz0c0DhTbGBwWXc
         mXVcV7dVDFZI6LZ9V0Wrk9NMHXUl3N1Ps9V/UjXBHUqKCNpE2u/BVcH4elkrZxmJYmN9
         aZ0qBIwaz/qfbEjRypt4LgIMRc4DyVNGpvaYjD/sozPYMT7SBjHyQtAHjJL/8AsCgNuV
         oWtu/bKU3ajqIK4ZBk73U+1ZHI1nXeljiRqqjiyfr8Aizhghz5xkVLz69jY5PAgwtqYW
         Nz2TmutHHK1NcJcbUmAHtuBBgndXIiR0kB27jYcc7DqXnHiwZtXZdtngvos9mDdxe4FV
         4+xw==
X-Gm-Message-State: ABy/qLYRjFgqdj390AYPGda9B97X3YLU2lc84Ux7B7iBYNxaYv55aapF
	FomjmGIG/9AKKCIaFFicBMrr2xniGrLGX8Qg1RU=
X-Google-Smtp-Source: APBJJlGS8gVNY6wOq3wTAu77YtV4k3kOYTmOgon0h0cxJMmNVVysd6ICAyejQni8l5u9Fm0MnNHYbqxrv1jSa3ue0i0=
X-Received: by 2002:a17:90a:72ce:b0:267:7743:9850 with SMTP id
 l14-20020a17090a72ce00b0026777439850mr939949pjk.14.1689669304776; Tue, 18 Jul
 2023 01:35:04 -0700 (PDT)
MIME-Version: 1.0
References: <64b5dc93.170a0220.243d5.1d63@mx.google.com> <87zg3tiv08.fsf@minerva.mail-host-address-is-not-set>
In-Reply-To: <87zg3tiv08.fsf@minerva.mail-host-address-is-not-set>
From: Luc Ma <onion0709@gmail.com>
Date: Tue, 18 Jul 2023 16:34:50 +0800
Message-ID: <CAB3Z9RKV4ptbwnyG2T1LsqcAFVmBsTFOGrVS5RR9PNx7FO8OfA@mail.gmail.com>
To: Javier Martinez Canillas <javierm@redhat.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B00683EE30
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.43:from];
	NEURAL_HAM(-0.00)[-0.918];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[sietium.com:email,mail-pj1-f43.google.com:helo,mail-pj1-f43.google.com:rdns];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[]
X-MailFrom: onion0709@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HNLA5EM5KRJNX7YHGCH6BEQD3KVHWVF6
X-Message-ID-Hash: HNLA5EM5KRJNX7YHGCH6BEQD3KVHWVF6
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:43 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: remove unintended hyphen in the sysfs path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HNLA5EM5KRJNX7YHGCH6BEQD3KVHWVF6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,


On Tue, 18 Jul 2023 at 14:39, Javier Martinez Canillas
<javierm@redhat.com> wrote:
>
> Luc Ma <onion0709@gmail.com> writes:
>
> > From: Luc Ma <luc@sietium.com>
> >
> > Signed-off-by: Luc Ma <luc@sietium.com>
> > ---
>
> Even when is a trivial change I would add something as commit message, i.e:
>
> "The kernel-doc mentions /sys/kernel/dma-buf/buffers but the correct path
> is /sys/kernel/dmabuf/buffers instead. Fix the typo in the documentation".
>
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
>

thank you for the review, I'll add the above to v2

> --
> Best regards,
>
> Javier Martinez Canillas
> Core Platforms
> Red Hat
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
