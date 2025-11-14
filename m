Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QB0RGXH94GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FAF410743
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B86B4097A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:17:04 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lists.linaro.org (Postfix) with ESMTPS id A68A93F7F5
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Nov 2025 12:59:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.com header.s=google header.b=dcigsyH1;
	dmarc=pass (policy=quarantine) header.from=suse.com;
	spf=pass (lists.linaro.org: domain of pmladek@suse.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=pmladek@suse.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b472842981fso243729166b.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Nov 2025 04:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1763125183; x=1763729983; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lIa30kEZfIOzXn6c2Ch+jzSexECrPYWXzGffwwy3r9Q=;
        b=dcigsyH1Uc48XJOc3ycBCyfYMmRT4m/cdZOXGnhibG4UKLm8aFXDz33xFNcCjf6MKQ
         8TtctB0uIfKuAdfijW4xMFoUxBCXDP0WwZNs6mnl6NBdxuB4NZVLTb7EW98VBxBzFgrW
         6pUf8p8klsWmMhdT08qAVc3RtAXL4It5ya1r//kunWQs2vWp3ABbQE4/A5DiEhx2Yngs
         rSiA5qxywzbjJbqDA3BA9tkarOdsajwL6xF+N6O/XEYdf+amt8mT7VlBPqiJ+J8Xhd7H
         yk0hmBXfJJzL90rfsQOzT+Txp+p22Gi49xE896++8SW7aWMguLWz6h/XVa885DxgOuND
         Royw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763125183; x=1763729983;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lIa30kEZfIOzXn6c2Ch+jzSexECrPYWXzGffwwy3r9Q=;
        b=RSygB7AfWKF1MU4K2BeaW3wF9iXTiYGKi1GRbYER5AZcgSvbO6/gC+KjXa27BTutoo
         b2QrUL+CVhtf3RpNjBHipkcQrDXv5Mu1Veg9WSvfaQQDjUK98fbMj3r1+gZDXtu5UJwV
         Enkpu0e3S8/YZxWoQXaWI270P/3Fxb1VVxBuf83KHjvwavDDKDtYpxMCNlFZL9w4Dt21
         jj9xdR/oRziVvbgRiwa4qZLzpHhB8t+UgVzT0xCrU/GMgjUI6v6lpWFBeztpFz4PKRVI
         X85G9Acl5OjsGVrrS6NkKvLALXwKnECs7AHQRYjRYk9v+afYSnLz48ZEveBblDHeAYgm
         if+g==
X-Forwarded-Encrypted: i=1; AJvYcCXR1zd/QzCu5vrKHdqHV82eggIn9InEnW81ec3owgh8t17sRdRdx0iyxtMgi9BdsFhwGAGQ5AqufrDRsS35@lists.linaro.org
X-Gm-Message-State: AOJu0YwO86Q3c9T4u3ziZ0ltrVT1pWiz+buOiPR3RbiovwfJR8Q5Dr65
	yiJ43aQ3RDtBNPa19NQicssbb9Hkz6gvZNa9AH2eBG7AWNVEo9xPaXVE5L3+veYIfjY=
X-Gm-Gg: ASbGncvkNMxvfH3ZrjXtr+0NbqiyADbGrtpL6thClLy/l/7gvAR84N5UmgwKuexTT0x
	e7nFo8kK7+gOqyixYTvrisgnIhH3H6XoEe+jcBOFE3kgznAxHd3sR0UYY16Ho8rSRlcVq5cQpuT
	odaESvGH9ui5YYiJ856zSriqKh8I3C3zx5d5DWUNwfKftWZJqpf85Ffe9tXs0odI4fpI8JZbZYa
	nqn3kwPUU3O1+BRjE1QxyLUjR/hW3iTGujfVns0NU/Iz3QI6vNVbnEry7fag9KJvG1xUQWTc0ZY
	42jGsfhCCHJqglbQMBqpYZfbqeN4Ojo6RUMyeVmYjsGxNUbpe33fVZyuFYQC8yYp99oQMb2kBu1
	SXveo6sJ06roCFtz2R2asN7lZJaT7RpI+IDfpv6mXnOyqjpTftiIhb+3To88sufU50U0zEAHX4y
	p4zB4=
X-Google-Smtp-Source: AGHT+IH6H5eoyoDiGCawX8hcyfAIsFqjcgfKx5GqQ3M5ZUeRqB23EXgoQaPPEhXoJ1r2rQPfP0tLQA==
X-Received: by 2002:a17:906:f105:b0:b73:7652:ef9e with SMTP id a640c23a62f3a-b737652f76bmr38125366b.55.1763125183501;
        Fri, 14 Nov 2025 04:59:43 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fd80a3asm382714666b.37.2025.11.14.04.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 04:59:42 -0800 (PST)
Date: Fri, 14 Nov 2025 13:59:38 +0100
From: Petr Mladek <pmladek@suse.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <aRcnug35DOZ3IGNi@pathway.suse.cz>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-2-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-2-andriy.shevchenko@linux.intel.com>
X-Spamd-Bar: --
X-MailFrom: pmladek@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: C5LMHRU4VVWUM24A6TBRKYLIR3KOIOZV
X-Message-ID-Hash: C5LMHRU4VVWUM24A6TBRKYLIR3KOIOZV
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:02 +0000
CC: Corey Minyard <corey@minyard.net>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>, Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost <matthew.brost@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Vitaly Lifshits <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar <kartilak@cisco.com>, Hans Verkuil <hverkuil+cisco@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>, Steven Rostedt <rostedt@goodmis.org>, Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>, Max Kellermann <max.kellermann@ionos.com>, li
 nux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <a
 bhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Ca
 rstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/21] lib/vsprintf: Add specifier for printing struct timespec64
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C5LMHRU4VVWUM24A6TBRKYLIR3KOIOZV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[suse.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	DATE_IN_PAST(1.00)[3674];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,linaro.org,kernel.org,wbinvd.org,linux.dev,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,ibm.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev,rasmusvillemoes.dk,chromium.org,lwn.net,padovan.org,ffwll.ch,linux.intel.com,poorly.run,somainline.org,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,hansenpartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.988];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[92];
	FROM_NEQ_ENVFROM(0.00)[pmladek@suse.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,cisco];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,pathway.suse.cz:mid,suse.com:email]
X-Rspamd-Queue-Id: 01FAF410743
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu 2025-11-13 15:32:15, Andy Shevchenko wrote:
> A handful drivers want to print a content of the struct timespec64
> in a format of %lld:%09ld. In order to make their lives easier, add
> the respecting specifier directly to the printf() implementation.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Looks goor to me:

Reviewed-by: Petr Mladek <pmladek@suse.com>
Tested-by: Petr Mladek <pmladek@suse.com>

I wonder how to move forward. I could take the whole patchset via
printk tree. There is no conflict with linux-next at the moment.

It seems that only 3 patches haven't got any ack yet. I am going
to wait for more feedback and push it later the following week
(Wednesday or so) unless anyone complains.

Best Regards,
Petr
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
