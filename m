Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABACB2635F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Aug 2025 12:52:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B5A1446CB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Aug 2025 10:52:39 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by lists.linaro.org (Postfix) with ESMTPS id 479F4446CB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Aug 2025 10:51:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b=KZJ2VnwC;
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.222.179 as permitted sender) smtp.mailfrom=daniel@fooishbar.org;
	dmarc=none
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7e87061d120so78435485a.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Aug 2025 03:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1755168716; x=1755773516; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EyUvbzeFbhuIBv4W0x0po1vS1DTZvcEEYsQW7Y4FHOk=;
        b=KZJ2VnwCfeQcas3ms5bpVDFxi00tSXpKxco2w+Svbm6TCoYznbmzoenw0dwRIvGlF0
         812x/inBPCggYdwd8ZWA5eInukOJUwJfBnyNOQ8J+M3QNoEcFe7mTpGcCVPAEs9kMfBJ
         uzoOgXfgnracUbsM982cPsDeXL/OyZ7zDf7NQncae8X2dYQBWcUDscN/kqYt1CZdqZ5q
         jaD7o7aBhWBe46j1qnxbm/ZX8moBcJUfLwYNbt1vxe1q1OCCp7rL9vr8UaSbfvYdMFDZ
         Lqifa4pTCD3NcPq8rUVq/ne6ByTQF8zMBRwrtcdFigh+VA4JKGsaccVXBUCItDAkRjgz
         ULEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755168716; x=1755773516;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EyUvbzeFbhuIBv4W0x0po1vS1DTZvcEEYsQW7Y4FHOk=;
        b=PSToQogwKmYyEOEeRw/CesJhDgHgvkj1k0MCPGM24Aj2S69JvkHJRsbYwL9LRyM1pv
         Yqw/EK+4ITJ996bD/0oIRWOmk350Y5tTMYrZ6m8ciAN/4tKgP+0WDMu2NmwmQvfdAEif
         hWyQ7+aOAT6p1fI6DtwnAiE3k432vE1pVhAqJ7pU3mC7w5BehVOnrtZ4jzyFEX4DUDWj
         +98xLTOuIB+ggoZQDqWF8vf7uryqcuD+peEtLiBXbHSJpav+VQsZ9pbuHC9Ibf4PS9Bi
         UYOOJeY2IYMuYrb3xJV69sA0q3oohcCEp91JfyeZ40mCoCfgZ8P8nRMGsD9zv1Kub/tS
         0Nmw==
X-Forwarded-Encrypted: i=1; AJvYcCW2Ztc+rUKwfDPllRQ+4kvZ8aHVXYZ3+MaOcyJ83n8AmR3q1+DCG5gR2nhizTk68u+N25VUXld4oc6vHf6G@lists.linaro.org
X-Gm-Message-State: AOJu0Yy5+9sfdfV/F8LW1iA+JYh/jUbeKmaktPf+Bdzu07IIweMymoHb
	fVO8xsbf9ABGPugoV1h32y+TQBhQsR42/ir3HOW5m4fW570PXCgcrH0YdOzW9BYoqULBE8y9yEm
	0g5sx3EpSzOzS4eBUtyFqYi74nVsYLyO7xANW4CasLw==
X-Gm-Gg: ASbGncutwoA6auNhZOMS43FouWc0oe33VmIvxRPNxaFgBfLUf7SOtdXeMRACcPAhcjr
	b+7IqiAjI07ASnlVXzjguvkjlNGMz8fadDWZJo2vISwYWMC1IXXpdg6qd8u75mEcTXO/Pyq9HBv
	SfmMdMofQxZv0gcO+nkaP/Gn0nIpcAkrDZfc86WwR72vWbOPgpGuH24OAS+S5w3D5i3iiyku4HR
	2ZNYa6lyMkojrr9spXtEr2D7+BsW00gMh3/+r1B5g==
X-Google-Smtp-Source: AGHT+IFU90m48TZvu7emDeXfQb++9pXmCA/ExMi3L8cHu3e/h3aMjPcuvjlvwAbLWla/D0jCK64yfVaPIBbatOC3QzI=
X-Received: by 2002:a05:620a:7088:b0:7e8:4693:4cf0 with SMTP id
 af79cd13be357-7e8705d8895mr317330585a.54.1755168715779; Thu, 14 Aug 2025
 03:51:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250811-ethos-v2-0-a219fc52a95b@kernel.org> <20250811-ethos-v2-2-a219fc52a95b@kernel.org>
 <CAPj87rNG8gT-Wk+rQnFMsbCBqX6pL=qZY--_5=Z4XchLNsM5Ng@mail.gmail.com>
In-Reply-To: <CAPj87rNG8gT-Wk+rQnFMsbCBqX6pL=qZY--_5=Z4XchLNsM5Ng@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 14 Aug 2025 11:51:44 +0100
X-Gm-Features: Ac12FXwC6fsbGm2wMI2VtffK314czO8RhVctNAh3tnx01lPB-4vBApOS_6ocfcM
Message-ID: <CAPj87rNDPQqTqj1LAdFYmd4Y12UHXWi5+65i0RepkcOX3wvEyA@mail.gmail.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.179:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DMARC_NA(0.00)[fooishbar.org];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[fooishbar.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 479F4446CB
X-Spamd-Bar: -
Message-ID-Hash: EDNAKGOZBBTJXIZWEP5NEYGMAHYKLMBW
X-Message-ID-Hash: EDNAKGOZBBTJXIZWEP5NEYGMAHYKLMBW
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EDNAKGOZBBTJXIZWEP5NEYGMAHYKLMBW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Rob,

On Tue, 12 Aug 2025 at 13:53, Daniel Stone <daniel@fooishbar.org> wrote:
> On Mon, 11 Aug 2025 at 22:05, Rob Herring (Arm) <robh@kernel.org> wrote:
> > +static int ethos_ioctl_submit_job(struct drm_device *dev, struct drm_file *file,
> > +                                  struct drm_ethos_job *job)
> > +{
> > +       [...]
> > +       ejob->cmd_bo = drm_gem_object_lookup(file, job->cmd_bo);
> > +       cmd_info = to_ethos_bo(ejob->cmd_bo)->info;
> > +       if (!ejob->cmd_bo)
> > +               goto out_cleanup_job;
>
> NULL deref here if this points to a non-command BO. Which is better
> than wild DMA, but hey.

Sorry this wasn't more clear. There are two NULL derefs here. If you
pass an invalid BO, ejob->cmd_bo is dereferenced before the NULL
check, effectively neutering it and winning you a mail from the other
Dan when he runs sparse on it. Secondly you pass a BO which is valid
but not a command BO, cmd_info gets unconditionally dereferenced so it
will fall apart there too.

> > +       for (int i = 0; i < NPU_BASEP_REGION_MAX; i++) {
> > +               struct drm_gem_object *gem;
> > +
> > +               if (job->region_bo_handles[i] == 0)
> > +                       continue;
> > +
> > +               /* Don't allow a region to point to the cmd BO */
> > +               if (job->region_bo_handles[i] == job->cmd_bo) {
> > +                       ret = -EINVAL;
> > +                       goto out_cleanup_job;
> > +               }
>
> And here I suppose you want to check if the BO's info pointer is
> non-NULL, i.e. disallow use of _any_ command BO instead of only
> disallowing this job's own command BO.

This is the main security issue, since it would allow writes a
cmdstream BO which has been created but is not _the_ cmdstream BO for
this job. Fixing that is pretty straightforward, but given that
someone will almost certainly try to add dmabuf support to this
driver, it's also probably worth a comment in the driver flags telling
anyone who tries to add DRIVER_PRIME that they need to disallow export
of cmdbuf BOs.

Relatedly, I think there's missing validity checks around the regions.
AFAICT it would be possible to do wild memory access:
* create a cmdstream BO which accesses one region
* submit a job using that cmdstream with one data BO correctly
attached to the region, execute the job and wait for completion
* free the data BO
* resubmit that job but declare zero BO handles

The first issue is that the job will be accepted by the processing
ioctl, because it doesn't check that all the regions specified by the
cmdstream are properly filled in by the job, which is definitely one
to fix for validation. The second issue is that region registers are
not cleared in any way, so in the above example, the second job will
reuse the region configuration from the first. I'm not sure if
clearing out unused job fields would be helpful defence in depth or
not; your call.

> (There's also a NULL deref if an invalid GEM handle is specified.)

This one is similar to the first; drm_gem_object_lookup() return isn't
checked so it gets dereferenced unconditionally.

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
