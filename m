Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIpXINH74GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:10:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 367634104C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:10:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0764440536
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:10:08 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id A73473F719
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Nov 2025 15:03:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.com header.s=google header.b=Oz2W9j0a;
	dmarc=pass (policy=quarantine) header.from=suse.com;
	spf=pass (lists.linaro.org: domain of pmladek@suse.com designates 209.85.218.41 as permitted sender) smtp.mailfrom=pmladek@suse.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b73161849e1so387984266b.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Nov 2025 07:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1762873437; x=1763478237; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wi+5dbYm5JIgaP/t7Nx547fFCD450JcmYNBqfgVm42E=;
        b=Oz2W9j0a+mIeDirY9/OldlxnYRdGwr4DLXHIzvCQDGcsXEKP+TcnEG78XUUhFue4K3
         8CV0sN2XuPfq9l3LfCk5U8+igs3H9uSZyELQ8q175QnmfTrFJLa1TsfpiuoZmoA88tbl
         7DL1ewoNtLuYZVM100iHLS3QPFq9kf/PrztIqlv+q2Z57AlV35aUDVNWAVTHEC/le0t4
         jV9xETno/U3fYSwoZqVUA7XsTWXkmyJB3nO7T1pciSySlisNlhvNH4kqtKTPPzUeVbq8
         urkmxZ2lTR7D9SHy8B3tV/Lxy+fXHRGFTCYe8nKZC3z+W6hpVwhxIOKc+FbkOZFc73uf
         OXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762873437; x=1763478237;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wi+5dbYm5JIgaP/t7Nx547fFCD450JcmYNBqfgVm42E=;
        b=aqvKLWOqnt/S+p1IQeKIvql2voXvDnQUGdNd/rPazgJLJiGq+kVgeT0Y0h/IPNSPYi
         bDlFUk1oy6aWWXqRBXbpr6/R0TOXZ79LHstE/py/RmrNUsT5u5ueuC2fxqSvBKtgAR/D
         DVJuHVZZtZBuvY7z08DPEEYMuUY+EwLlQKmpl0pOMdyOmGtk6V/FD+PwhwiJal/w+V4t
         U421CLFbPDOMjjBaYd9twQ6emJdorxbMJKwsVEuWIt1YJH3gqQiXtP+voAl9jc9uVlAL
         i0ZUQiTisNZGzka15+QTIp9U/iXucsSlbKhQTZ5lgw1/I6O8vd5JYlKswYnCGhr7Fyay
         ksyw==
X-Forwarded-Encrypted: i=1; AJvYcCVUEx5IrXC58BDHacaEb4fDGWU0G4fzOR7WJhxPaDdIgl6pWuD0GXFL3OdZIYKUaoFXuqDHCfbrWNiTvm4N@lists.linaro.org
X-Gm-Message-State: AOJu0YxH2bL57fbKU9nlmIY1BMJXYK9IqGoQIxPg+8FlvvbG1+8jQDo1
	BINwSIIplseEwCY4IfTHqzrBojKkURJ5NxIP3PyXj6fxo9F3pcMDMjz8aaWg8KjuMZE=
X-Gm-Gg: ASbGncukBvIKRdJ1gBKNusCEbMmzafq+ajzZCscrewCx1+biO/7E0Qnpz6sQxzxpKLE
	ROtE0YMnPFORyRRh5fK5kZr3dnFpfqOqc3FkTtD7wQc3BOeLL65t7T368UPLyEqojO+S+RqQWe+
	aepHYpYa6mMlkvxm5tzwvzDRLtL9Q25TVj8NSakWO9zQuS5lPyx4vfrNHEYQp8YZnk4BwHJCjIK
	WH3pO1yFa9k37VkoXO63GjW/XBStdV6JrS/ZMXo9mBgMdFU29oWNFl6Np9FdKX7U9XvbKJVt46o
	ZfqmwYmhNs1NAGFm+ROgPKx8OF2bCmaaQmCG3ygkX+WizZGd4WuEriP2qrrmiokGlGM4jtuTVJs
	m2UvTql83hPROsc+9XhVXcWeeg4JBKnFZUKhhAah1kv3fQ5WQz1aZoa8+3Gm020rCuIfqOq3BCi
	4vPHH5H+S8eOmrgbX4QQ==
X-Google-Smtp-Source: AGHT+IGWUxoIalLG5xLZllX+zCkekRXIo7e3xykwl2APS2wZQPGHNLqastwX+dw6XlJnfwm9Fe+bGg==
X-Received: by 2002:a17:906:f590:b0:b71:cec2:d54 with SMTP id a640c23a62f3a-b72e04e4ebemr1306841566b.57.1762873437355;
        Tue, 11 Nov 2025 07:03:57 -0800 (PST)
Received: from pathway (nat2.prg.suse.com. [195.250.132.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bdbc9656sm1374243166b.7.2025.11.11.07.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 07:03:56 -0800 (PST)
Date: Tue, 11 Nov 2025 16:03:53 +0100
From: Petr Mladek <pmladek@suse.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <aRNQWc8O2y94zoj8@pathway>
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
 <20251111122735.880607-2-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111122735.880607-2-andriy.shevchenko@linux.intel.com>
X-Spamd-Bar: --
X-MailFrom: pmladek@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3ZNGMYHUQ6NB4PKXRFHLVNQTVK3P4HJW
X-Message-ID-Hash: 3ZNGMYHUQ6NB4PKXRFHLVNQTVK3P4HJW
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:53:31 +0000
CC: Corey Minyard <corey@minyard.net>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>, Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost <matthew.brost@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, Vitaly Lifshits <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar <kartilak@cisco.com>, Hans Verkuil <hverkuil+cisco@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>, Steven Rostedt <rostedt@goodmis.org>, Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>, Max Kellermann <max.kellermann@ionos.com>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
 , openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@
 gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Richard Cochran <richardcochran@gmail.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.
 ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/21] lib/vsprintf: Add specifier for printing struct timespec64
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ZNGMYHUQ6NB4PKXRFHLVNQTVK3P4HJW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[suse.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3744];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,linaro.org,kernel.org,wbinvd.org,linux.dev,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,ibm.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev,rasmusvillemoes.dk,chromium.org,lwn.net,padovan.org,ffwll.ch,linux.intel.com, gmail.com,poorly.run,somainline.org,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,linux. ibm.com,hansenpartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org];
	NEURAL_SPAM(0.00)[0.984];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[91];
	FROM_NEQ_ENVFROM(0.00)[pmladek@suse.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,cisco];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 367634104C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue 2025-11-11 13:20:01, Andy Shevchenko wrote:
> A handful drivers want to print a content of the struct timespec64
> in a format of %lld:%09ld. In order to make their lives easier, add
> the respecting specifier directly to the printf() implementation.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  Documentation/core-api/printk-formats.rst | 11 ++++++++--
>  lib/tests/printf_kunit.c                  |  4 ++++
>  lib/vsprintf.c                            | 25 +++++++++++++++++++++++
>  3 files changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/core-api/printk-formats.rst b/Documentation/core-api/printk-formats.rst
> index 7f2f11b48286..c0b1b6089307 100644
> --- a/Documentation/core-api/printk-formats.rst
> +++ b/Documentation/core-api/printk-formats.rst
> @@ -547,11 +547,13 @@ Time and date
>  	%pt[RT]s		YYYY-mm-dd HH:MM:SS
>  	%pt[RT]d		YYYY-mm-dd
>  	%pt[RT]t		HH:MM:SS
> -	%pt[RT][dt][r][s]
> +	%ptSp			<seconds>.<nanoseconds>

I know that that there was no good choice. But I am curious.
Does the 'p' stands for some particular word, for example, "plain" ?

I do not want to start bike shedding but I think about
using 'n' as "number".

> +	%pt[RST][dt][r][s]
>  
>  For printing date and time as represented by::
>  
> -	R  struct rtc_time structure
> +	R  content of struct rtc_time
> +	S  content of struct timespec64
>  	T  time64_t type
>  
>  in human readable format.
> @@ -563,6 +565,11 @@ The %pt[RT]s (space) will override ISO 8601 separator by using ' ' (space)
>  instead of 'T' (Capital T) between date and time. It won't have any effect
>  when date or time is omitted.
>  
> +The %ptSp is equivalent to %lld.%09ld for the content of the struct timespec64.
> +When the other specifiers are given, it becomes the respective equivalent of
> +%ptT[dt][r][s].%09ld. In other words, the seconds are being printed in
> +the human readable format followed by a dot and nanoseconds.
> +
>  Passed by reference.
>  
>  struct clk
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index 3f99834fd788..fdd06e8957a3 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -2464,6 +2488,7 @@ early_param("no_hash_pointers", no_hash_pointers_enable);
>   * - 'g' For block_device name (gendisk + partition number)
>   * - 't[RT][dt][r][s]' For time and date as represented by:

We should add 'S' here as well:

   * - 't[RST][dt][r][s]' For time and date as represented by:

That said, I am not sure about the optional '[p]'. We could
either do:

   * - 't[RST][p][dt][r][s]' For time and date as represented by:

or

   * - 'tSp'	For time represented by struct timespec64 printed
		as seconds.nanoseconds
   * - 't[RST][dt][r][s]' For time and date as represented by:

>   *      R    struct rtc_time
> + *      S    struct timespec64
>   *      T    time64_t
>   * - 'C' For a clock, it prints the name (Common Clock Framework) or address
>   *       (legacy clock framework) of the clock

Otherwise, it looks good.

Best Regards,
Petr
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
