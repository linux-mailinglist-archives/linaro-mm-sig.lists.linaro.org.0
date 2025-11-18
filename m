Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAaEDC3+4GnzoAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:20:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CFA41089D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:20:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BABAA409A5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:20:11 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id A83CD3F7E1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 18:50:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Mq3pH5bU;
	spf=pass (lists.linaro.org: domain of olteanv@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4779cd413b4so2400465e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 10:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763491828; x=1764096628; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/xelqTh0MJxdYizhebw3VTy7C2C4gWnDlrkViLNdgoU=;
        b=Mq3pH5bULzWfsK1FqYLeGs3jUwqU+GPHDeIfEPcGbsai//xVGVPiouOy2I+4/6XkaW
         sQ+f7ppPlPa3v9Qn0tUyuZ2Fiq+xma++CjFB9vG6WuMBszjDLxSB5IrMmLlvFM+r5bFv
         AL+LRE8K0/uaG3HwGbWwsTjTm/YE593fzwlb3udfDPAwqyHQKSzA0oQh57Ih00Egg/9Y
         +jmI/ZDrgsR6edmuZGLE17jWHOCtL8xu+rlWkwMY0iRssu8T1h+9uwLUZK2ne5J1WVG8
         FR/0xk8+YilozVV/1z0hH2Ghao7NH8DrtAEM3yxqwT+5mQ1HJqdLhEGDljb3X9qVYkk/
         r/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763491828; x=1764096628;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/xelqTh0MJxdYizhebw3VTy7C2C4gWnDlrkViLNdgoU=;
        b=K9djgmEWBFXjr1Ji9l2D01f81NocbTVC6kkSYaMeR676QeBVvv2Iv6hI7YNjrC5BpK
         IQQyEm7wfm6kAYi/2C0wBkukFRPk7cHKJje7cFJqqryIxuHVlgGFusdLgreNBBWlgeRV
         CnJSyghLfLSPrhbgM37UK7T0crNR79WmXZ5bLPBkSXmoIFHt/sSLtdQdhwA9Y+mfT1aw
         LZJdgZeHuaCHCFUJjZJLjVW0oKDzce7QvJMads70O/qI+U/yplrHtcFEdATmHNpMQuWe
         OSkos4nvcXiZMnDyJbNi2RsnQw99Fs0LdcS5zCDuzGiq207TVUglU6DSed7Q6l4pI1nX
         bTSw==
X-Forwarded-Encrypted: i=1; AJvYcCWLvmh0diGeKChE0NYGG6GHzix+RG2tJ0mcdfPewJuWt3ryUCIBKQIVGGteW7fsKXwVJDhOd01Tt5max91y@lists.linaro.org
X-Gm-Message-State: AOJu0YznJQ+f8Gx9sM47q+aWeA3KK4hzCPR+O2CHnBAiZ6Fkqz/FufvE
	+ZvU/T7fWWmCj1zQGFDVg/AwilxDouQvnalUfNK/v87+qKelKngjejgB
X-Gm-Gg: ASbGncv7LzmJhLd5kHqvo+s3blFrGd8hdmYbq9pYZQK8jqCHswR3LSt6NUiZoAB0IAf
	bY4q+Cx4QnwlPIh/PEP9P8C+bvreBz6Kem5mcZRcNnaKQAEonvOGwicQnN4BbbOCfUXevyoQBYU
	3yWw+HBbnf7CW3KjN2KkHbIZ9ueU8AMuHffBrujscBvFpr3fdmHQKWfdSQdnwEoTiDNRDXy6+wB
	azZmKUq0bTRtAjySjYqCOgHlJg/O0BFAZfgKrvG/arBYcTLl62svH87eyqOoFEewhQYBWZN3LhU
	SnCrlFBkT92Gq/TdgAE1lOZrxdZwDsWLfYayrxmdzk55Y6TT/EkK9T1kK/34c+22NoE0LmuRLxH
	fhyWHm60t/415S+nSAojcfxStk+ktn5hPaZyGSS4u2DcSGdJGSTvgggxf5gTOpPKxvAd29uDwkB
	S6w6Ka/ii3KVzF
X-Google-Smtp-Source: AGHT+IHx6i4VYWR6pSTcXtSoFlN4Y9U/3Z/PI54PVyQA5JnsfbBaJwpdM3LzkIBKtiuh5JtXbYxanA==
X-Received: by 2002:a05:600c:1547:b0:477:5c70:e14e with SMTP id 5b1f17b1804b1-4778feabadamr87966605e9.5.1763491827278;
        Tue, 18 Nov 2025 10:50:27 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:9ac1:9a91:7d1:a813])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9df99d3sm22110705e9.12.2025.11.18.10.50.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 10:50:23 -0800 (PST)
Date: Tue, 18 Nov 2025 20:50:17 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20251118185017.kk7binsumhh27n7x@skbuf>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-15-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-15-andriy.shevchenko@linux.intel.com>
X-Spamd-Bar: ---
X-MailFrom: olteanv@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: O4RNLMPMUYSB64WQ4K67RYL7EGL2FDN7
X-Message-ID-Hash: O4RNLMPMUYSB64WQ4K67RYL7EGL2FDN7
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:17 +0000
CC: Corey Minyard <corey@minyard.net>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>, Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost <matthew.brost@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Vitaly Lifshits <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar <kartilak@cisco.com>, Hans Verkuil <hverkuil+cisco@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>, Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>, Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>, Max Kellermann <m
 ax.kellermann@ionos.com>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@k
 ernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca
 @linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 14/21] net: dsa: sja1105: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O4RNLMPMUYSB64WQ4K67RYL7EGL2FDN7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3572];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,cisco];
	RCPT_COUNT_GT_50(0.00)[92];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,linaro.org,kernel.org,wbinvd.org,linux.dev,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ibm.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev,rasmusvillemoes.dk,chromium.org,lwn.net,padovan.org,ffwll.ch,linux.intel.com,k ernel.org,poorly.run,somainline.org,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,HansenPartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.986];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 02CFA41089D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andy,

On Thu, Nov 13, 2025 at 03:32:28PM +0100, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---

Acked-by: Vladimir Oltean <olteanv@gmail.com>
Tested-by: Vladimir Oltean <olteanv@gmail.com>

Thanks!

This is a rarely modified portion of the SJA1105 driver, and it doesn't
conflict with other changes that I have planned, so from my PoV there is
no problem with the patch being picked up via other trees.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
