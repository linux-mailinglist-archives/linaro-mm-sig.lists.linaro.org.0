Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E3967B22775
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Aug 2025 14:54:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C0094432A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Aug 2025 12:54:20 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by lists.linaro.org (Postfix) with ESMTPS id A76544432A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 12:54:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b=LGqiMPR4;
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.222.172 as permitted sender) smtp.mailfrom=daniel@fooishbar.org;
	dmarc=none
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7e809baeef7so605567185a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 05:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1755003248; x=1755608048; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2WtksxPDLT/0y+3eZjc8hEFOkmY30/S+XOZ4ZbmRdMw=;
        b=LGqiMPR4LVLUekT4bUbhecluwUHbDikxTYzV6FwEJ4j6IXAFEhH0IsH1ULFao0ZCaw
         L7pwJkfmMhkdldr0gTUX0XhrGITUmXUACD5+yUry1bj9/dHZcG6gBN8wdh9kGTWjRldl
         2F0Kk6bCxvmgLmAx3HCKX/hrlqoweDk1tOytnUfWSab1tHovTdRkuH2u6iJs2nUfNZLW
         u5SVdHK//FqMZcwcoEIUwUYtJZraKW10A8xGoKJ1fJqzf3T0r8sXQXYuTmn0AidRBmzC
         kQXBdqXo/iLXeV+iUt5+6zMRVr4lotCeiVwWvgZY/lShh2mZoANDYxAXc3bSShRRHuGJ
         8pLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755003248; x=1755608048;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2WtksxPDLT/0y+3eZjc8hEFOkmY30/S+XOZ4ZbmRdMw=;
        b=Q7xvmVBSVObOunAH8i72O2xpCVWme8wB7K5uXHSpukHeI2FQw2pheTdNpsM5nDMOpZ
         CCxmffoYQ2UPMP0yA4BHRVlfOad1knUQigmp+tGaG4CkawpYmVhWFfGXRBSy7ECTaLeH
         D8bBL/PgMo9h6kzQ+LLLxuWoFzTQNtBo325i4sQLYfT8jpiMgKeTXrIo+HqqOMX64rvE
         fF/2OA96bGGFv7tMKOGh3taMzl+xSl0p45YKEkZpalwQSxdv37uN2dJlrzUyH89ggpDU
         MZGFfVQO9U2nfOpuZPJyCG7RrFkn7xR+GcgWWQt/Q8G5974fBGFjqgVDR4zcbzEset8z
         A/tA==
X-Forwarded-Encrypted: i=1; AJvYcCU/MtTKfc1qJjbuMdnLtUIw2umdQc/b9h+hQDPmDeQqyDSquFsbMWWxrO+QV2MSBE7NGLzuvLPFn4MeOwKy@lists.linaro.org
X-Gm-Message-State: AOJu0Yx3+oQwrf3BKoacg4X0V4q0UKgN4LUhF9YwAMe7vkozUvoGyd00
	uIV7d1TOICIZAMvgxDNou5I8idd5UNSYSlm9sGvwpHydfAUxo5FvODr9ql5OhV6jPd7Ad5mf31/
	2tO2C5uJD8NPJzcTLaZLGGh6h6HaG480OCaPdUcE3kA==
X-Gm-Gg: ASbGncvbwcOGOW8cZeIRNmTiMRkJih4qTDcLRhiEqGAL8At4kZz0uZBSdcGm0cK5rOP
	vclL0N7K1NoK3hguuy1VrvkmxVyhDoSsG9+E/jPUlGNdzaNon8yBoCBqfHoFEg66bpidUGmCuG8
	U8v108gDuaP00t7nEmPaR9e7CwHhRyJeXJGztOJGUnulQdL2pFNzC8Q5mjXIOb3hBUF9APcyDN5
	anficGpq3SptKrMItaXhnR5JK5VpheyyMDyC8Yv0w==
X-Google-Smtp-Source: AGHT+IEigi3eT3slvsaqaQxfpzA5/X/BpBps7n3zcMZvnFhGp0J3xR5YD/W1WjO/6HkGh5ZjKB8p2S+Mbi6DGKsspO8=
X-Received: by 2002:a05:620a:a117:b0:7e6:50f2:d62d with SMTP id
 af79cd13be357-7e82c616e28mr2406978785a.5.1755003248102; Tue, 12 Aug 2025
 05:54:08 -0700 (PDT)
MIME-Version: 1.0
References: <20250811-ethos-v2-0-a219fc52a95b@kernel.org> <20250811-ethos-v2-2-a219fc52a95b@kernel.org>
In-Reply-To: <20250811-ethos-v2-2-a219fc52a95b@kernel.org>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 12 Aug 2025 13:53:56 +0100
X-Gm-Features: Ac12FXy89rNxCKeR5zfeZeSe2T50SLXSk1IHDgjCBDBFp3HnioWFlDD6e2e-kGA
Message-ID: <CAPj87rNG8gT-Wk+rQnFMsbCBqX6pL=qZY--_5=Z4XchLNsM5Ng@mail.gmail.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.172:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_RCPT(0.00)[dt];
	DMARC_NA(0.00)[fooishbar.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.222.172:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[fooishbar.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A76544432A
X-Spamd-Bar: -
Message-ID-Hash: W5XPGW2MK5LX6E3H6PCEPEDTIMK7TTCC
X-Message-ID-Hash: W5XPGW2MK5LX6E3H6PCEPEDTIMK7TTCC
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W5XPGW2MK5LX6E3H6PCEPEDTIMK7TTCC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Rob,

On Mon, 11 Aug 2025 at 22:05, Rob Herring (Arm) <robh@kernel.org> wrote:
> +static int ethos_ioctl_submit_job(struct drm_device *dev, struct drm_file *file,
> +                                  struct drm_ethos_job *job)
> +{
> +       [...]
> +       ejob->cmd_bo = drm_gem_object_lookup(file, job->cmd_bo);
> +       cmd_info = to_ethos_bo(ejob->cmd_bo)->info;
> +       if (!ejob->cmd_bo)
> +               goto out_cleanup_job;

NULL deref here if this points to a non-command BO. Which is better
than wild DMA, but hey.

> +       for (int i = 0; i < NPU_BASEP_REGION_MAX; i++) {
> +               struct drm_gem_object *gem;
> +
> +               if (job->region_bo_handles[i] == 0)
> +                       continue;
> +
> +               /* Don't allow a region to point to the cmd BO */
> +               if (job->region_bo_handles[i] == job->cmd_bo) {
> +                       ret = -EINVAL;
> +                       goto out_cleanup_job;
> +               }

And here I suppose you want to check if the BO's info pointer is
non-NULL, i.e. disallow use of _any_ command BO instead of only
disallowing this job's own command BO.

(There's also a NULL deref if an invalid GEM handle is specified.)

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
