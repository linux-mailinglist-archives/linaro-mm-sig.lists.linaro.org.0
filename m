Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B42B27EF2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Aug 2025 13:16:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9B5644A58
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Aug 2025 11:16:00 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by lists.linaro.org (Postfix) with ESMTPS id A4C214443F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Aug 2025 11:15:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b="SSjj20t/";
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.222.177 as permitted sender) smtp.mailfrom=daniel@fooishbar.org;
	dmarc=none
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7e87068760bso214527485a.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Aug 2025 04:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1755256547; x=1755861347; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T/aoVi6AF3aVJ/uqRpoLaF29+CuY9MSd7NGZ1/77wPA=;
        b=SSjj20t//QqVJn5USOYLUImVX/NheUyYks6l5IU+chPEgj1jOZzIAOGDrb3iH6gm0n
         l2f0YwYLjoStBQy1TU8rZSmLz0ujL2s9stsQzkHD5MVNg+1xAn8KW3UGJ6zHDRCrkt/a
         G7LT2MqJruYLXKYGr24YnRlOkFHpkrVt6Vqx4VyAavwU1lpMyY+9jjykV/rhg4mCVGlC
         JPNLX5Wo/uF6kEbdMjIysNK/C1OT4N88766Sw8KVYmxt+f36IIDbPah6UDlO4PWidpt7
         z6616qmn4KDSMSYF6D+nvYbkkbGKzb05ykLkBWDq4qmDKuaxpaYNYmIKbWbGpMDKp6Nq
         Ibuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755256547; x=1755861347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T/aoVi6AF3aVJ/uqRpoLaF29+CuY9MSd7NGZ1/77wPA=;
        b=M455925lKcrkL+qOwSSzg3kmKzxIqxby9uCxC2+OX4/df1Px7lEaRvaOF/ZdBZPEqs
         2RHNNfM8tMcZY1tjMY21I8iBT05rRJdJJXrAwJ52rTbEtqMmN0CZk8tNqSCB0Lq2fk0r
         T60/c2SNQ1IFXBcMktloX1vhC8A3q6MDuwlOr2D5QYjFCIZrPE/EuJz5NCsZ2bZzuppB
         DzNFEJ26glFpMuzbKowbkRaPOWDMhakfz1rguvjePj51svy60nGmU9Ab8tG1DukHAlL1
         +e6JnP+qgPeumIbgo0n7gnm/8AolhC7epJ/GTirYx3cfPDONHQ1YUSbgUAAoVBHGreKx
         3wPw==
X-Forwarded-Encrypted: i=1; AJvYcCU3/0bEEdxScAMhbwfD3lYWnvyQ9nvpZv48h+gOzempWBygL0E/Q0aNzmDT0yZAaBxRIL0qVJ7xht5PHCnv@lists.linaro.org
X-Gm-Message-State: AOJu0YxKSQNaesquoHxyYtklwgkPgZxXNtUSgd9RY1sgwOZ4Y371CRcw
	sR0UpSJS4Sh/9oolyPgsDRw3qZyA++dOybW25HXzX+sp8Gvt7r5P4ZXuYH5H+PewEd/1Z97Lu/J
	sFEW9ZQPkASQAzM59O6b7tgDLI914n8jskwL72YE2QQ==
X-Gm-Gg: ASbGnctWQi6O0nJ+ZGx8+cv59lZIGu7iRF7PejEi/mytmbXoGK6IvNjSOs7EZ9he1I0
	mWn/JZBhQF92GGKpReZlCvBY6F31WhpD810Z1FbpVt8wP37mWuG4Hpzi7tTBmtG52TeqkFRqcib
	NyxYrU7CoB/wh1wd8fOj7y0A7l5BiI8Li2jKii4XTSlU6jV7GZ0Uc/Yt8f3wmKVRjNTQ3jtiuMT
	PuV5CY=
X-Google-Smtp-Source: AGHT+IEEYrgrzZzFQH7gJARNv39C5+Wwbco9I1459+Dntaj16EsMUXS27AwHprK/yA0fuMnmrf2M26jY7o7J1U606dI=
X-Received: by 2002:a05:620a:7006:b0:7e6:391c:41ae with SMTP id
 af79cd13be357-7e87e0c7484mr195050185a.58.1755256547086; Fri, 15 Aug 2025
 04:15:47 -0700 (PDT)
MIME-Version: 1.0
References: <20250811-ethos-v2-0-a219fc52a95b@kernel.org> <20250811-ethos-v2-2-a219fc52a95b@kernel.org>
 <CAPj87rNG8gT-Wk+rQnFMsbCBqX6pL=qZY--_5=Z4XchLNsM5Ng@mail.gmail.com>
 <CAPj87rNDPQqTqj1LAdFYmd4Y12UHXWi5+65i0RepkcOX3wvEyA@mail.gmail.com> <20250814161718.GA3117411-robh@kernel.org>
In-Reply-To: <20250814161718.GA3117411-robh@kernel.org>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 15 Aug 2025 12:15:35 +0100
X-Gm-Features: Ac12FXyQS213pP_GudOiU8lJOx9k9Gscd8v3FBcgxsevLgT7o4PDTPSWp9SpRP4
Message-ID: <CAPj87rN=Hod6GyA72x07yTvxL5X2q4UyUmPg-hyjjFA5KJvYGQ@mail.gmail.com>
To: Rob Herring <robh@kernel.org>
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.177:from];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[fooishbar.org:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.222.177:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[fooishbar.org];
	DKIM_TRACE(0.00)[fooishbar.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A4C214443F
X-Spamd-Bar: -
Message-ID-Hash: UFI3QC5GM6YU4NEQ6JZL27TYVVMNOTO2
X-Message-ID-Hash: UFI3QC5GM6YU4NEQ6JZL27TYVVMNOTO2
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UFI3QC5GM6YU4NEQ6JZL27TYVVMNOTO2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Rob,

On Thu, 14 Aug 2025 at 17:17, Rob Herring <robh@kernel.org> wrote:
> On Thu, Aug 14, 2025 at 11:51:44AM +0100, Daniel Stone wrote:
> > This is the main security issue, since it would allow writes a
> > cmdstream BO which has been created but is not _the_ cmdstream BO for
> > this job. Fixing that is pretty straightforward, but given that
> > someone will almost certainly try to add dmabuf support to this
> > driver, it's also probably worth a comment in the driver flags telling
> > anyone who tries to add DRIVER_PRIME that they need to disallow export
> > of cmdbuf BOs.
>
> What would be the usecase for exporting BOs here?
>
> I suppose if one wants to feed in camera data and we need to do the
> allocation in the ethos driver since it likely has more constraints
> (i.e. must be contiguous). (Whatever happened on the universal allocator
> or constraint solver? I haven't been paying attention for a while...)

Yeah, I guess it's just reasonably natural to allow export if you're
allowing import as well.

> Here's the reworked (but not yet tested) code which I think should solve
> all of the above issues. There was also an issue with the cleanup path
> that we wouldn't do a put on the last BO if there was a size error. We
> just need to set ejob->region_bo[ejob->region_cnt] and increment
> region_cnt before any checks.

Nice, thanks! That all looks good to me.

Using unchecked add/mul when calculating the sizes also made me raise
an eyebrow - it might be provably safe but perhaps it's better to use
all the helpers just to make sure undetected overflow can't occur.

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
