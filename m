Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oH5sH4j+4GnzoAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:21:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FE8410932
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:21:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35117404F9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:21:43 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id BCCF33F786
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 10:09:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.com header.s=google header.b=DPFhxGDU;
	spf=pass (lists.linaro.org: domain of pmladek@suse.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=pmladek@suse.com;
	dmarc=pass (policy=quarantine) header.from=suse.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b72b495aa81so839078466b.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 02:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1763546963; x=1764151763; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mZmwnZeJsVmH4Emd6Sk7OTkRxBmCW6aXF7g1I/Zjods=;
        b=DPFhxGDUA55k3Y1y76LkZCwPReo3cVpi0wl1y1VER6qE9iNKEm9KxqJOgiGsGBfkPl
         Z1CDj02+WatZMO4RG5yqfojzGmB8YuI1eDwKFt9i1d5HZGj9RZvSqJr7YsK68zMh7MUy
         ZdemQUoSUpw5X1c2oAkPIDIOTnGLonYCdTiXCKCVSBaBtpcJ10Ep7BDS16s23phiDutM
         3Pcl2h/uLbnZiNLZKc8rc4bEJOCdwRshAoiXjcWWY8CPEauaAxigexNl2vn77fSjez7Y
         bROSzWgDJTFPoDo9yYgoi0uMnoD+log9BY23NQxFm9MzIHwFO8KlMxiPo7ixcniKPS6g
         l4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763546963; x=1764151763;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mZmwnZeJsVmH4Emd6Sk7OTkRxBmCW6aXF7g1I/Zjods=;
        b=h2PiG+SQtLp3PxUH0IrgiqVeVoDLEIhE9ISqSnTHE8XENoOVjRn+uL30WzOY7SletI
         pUvX8ZIMWtkreVAz1DtIr0rg7F537tv8jwJsBFCoJy8dq6iT2tFiSeiEgjkcDRQB+MFV
         Kaxe8H3V+liwALH/oVu/ifSFSY9Fqkput0Ck7WmXd2kbI7nofokz6EmCyO2fdBQOM1OC
         1AQfvsd2cGzJ+OJpc4kJCI6RsBgXKCqYKOt8dJVDmzz8dwkcUp/AcA5rK5qyswLrbDOg
         DFqgVhuItVz+aGnVNTYMPy2GJRWg5cjn0Baxxth0b1zDPEyIUp5UK5CAi6swUTp1gO6B
         znMw==
X-Forwarded-Encrypted: i=1; AJvYcCWMLaOfduCMuUEaYRTbCkkSiNXvFU/A9bUuokWWNm5bhxRuVCTWiTFAbwvcem1JxoYKk+dPq+++457hsVvI@lists.linaro.org
X-Gm-Message-State: AOJu0Yyu8jV3AUkJNduIaQMgGEMra/EFMl3TEoVqNXbcKyz7+jgbgK1h
	DaJTUdu2aTUMo5ODasa8i06kLdMGG1jiOM8p0XlsKZMizzff5j86gwwW9RundXQq/Hs=
X-Gm-Gg: ASbGncsUGZwWdFxcUu7oXHmSRHTF0cGzRhnMJhTo82wmGpu+VDB6XQBRpaTl7ZnCT4J
	mReNLGxYnct4CuXN4zyQf0Fx6r6C/vgbWXKuLAqqiDWWRm49WZD2tpLr/hoBz/XPRCGdSxa19aP
	XMEZ+a0n2KVgK2NOH1EJsP10pAX8lyI4b9PO4KGAfbZ5qBOXmZ+NhVdmJApzELswa+k2dTPnbUv
	gr2qDVQXv5246CMSI/jTHCY0UZPNnHTKPmOkBs4UCvXqj+bxvzxdeqTYgvFR6jHe+emGWJLQfoE
	iLLkzLCHzg8M6bKYEDYdjlGcslvQOrDZjxmxtOWVGzk2xHp2mn6bbooe1PvhXOfZzHDEUwXAOXE
	MzP5qRlsQ+7mTajWbYzjHEMLwz6nMA1xRQu2HltDkmZS6NrhUQ/+VeWFUlTcBq1KCZiWU2KObYx
	/x7P7Qg0EQAZeJO/q9hszQqg2V
X-Google-Smtp-Source: AGHT+IHL60A5nBupA1OyvdeZdvK8rVJqcdAj2UJ8GMSSqilZDEkvpcYDaNSL65+yyn9lVOsemK499g==
X-Received: by 2002:a17:907:1c81:b0:b72:d2df:641c with SMTP id a640c23a62f3a-b736795d498mr2006941666b.49.1763546963352;
        Wed, 19 Nov 2025 02:09:23 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fda8bc8sm1594056066b.49.2025.11.19.02.09.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 02:09:22 -0800 (PST)
Date: Wed, 19 Nov 2025 11:08:01 +0100
From: Petr Mladek <pmladek@suse.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <aR2XAYWTEgMZu_Mx@pathway.suse.cz>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
X-Spamd-Bar: ----
X-MailFrom: pmladek@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B2436VNWPEHAAKOYUASJOX6TPOA4HHBD
X-Message-ID-Hash: B2436VNWPEHAAKOYUASJOX6TPOA4HHBD
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:00:52 +0000
CC: Corey Minyard <corey@minyard.net>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>, Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost <matthew.brost@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Vitaly Lifshits <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar <kartilak@cisco.com>, Hans Verkuil <hverkuil+cisco@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>, Steven Rostedt <rostedt@goodmis.org>, Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>, Max Kellermann <max.kellermann@ionos.com>, li
 nux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <a
 bhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Ca
 rstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 19/21] scsi: fnic: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B2436VNWPEHAAKOYUASJOX6TPOA4HHBD/>
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
	DATE_IN_PAST(1.00)[3557];
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
	NEURAL_SPAM(0.00)[0.989];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[92];
	FROM_NEQ_ENVFROM(0.00)[pmladek@suse.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,cisco];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,pathway.suse.cz:mid]
X-Rspamd-Queue-Id: 21FE8410932
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu 2025-11-13 15:32:33, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.

I was about to commit the changes into printk/linux.git and
found a mistake during the final double check, see below.

> diff --git a/drivers/scsi/fnic/fnic_trace.c b/drivers/scsi/fnic/fnic_trace.c
> index cdc6b12b1ec2..0a849a195a8e 100644
> --- a/drivers/scsi/fnic/fnic_trace.c
> +++ b/drivers/scsi/fnic/fnic_trace.c
> @@ -215,30 +213,26 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
>  {
>  	int len = 0;
>  	int buf_size = debug->buf_size;
> -	struct timespec64 val1, val2;
> +	struct timespec64 val, val1, val2;
>  	int i = 0;
>  
> -	ktime_get_real_ts64(&val1);
> +	ktime_get_real_ts64(&val);
>  	len = scnprintf(debug->debug_buffer + len, buf_size - len,
>  		"------------------------------------------\n"
>  		 "\t\tTime\n"
>  		"------------------------------------------\n");
>  
> +	val1 = timespec64_sub(val, stats->stats_timestamps.last_reset_time);
> +	val2 = timespec64_sub(val, stats->stats_timestamps.last_read_time);
>  	len += scnprintf(debug->debug_buffer + len, buf_size - len,
> -		"Current time :          [%lld:%ld]\n"
> -		"Last stats reset time:  [%lld:%09ld]\n"
> -		"Last stats read time:   [%lld:%ld]\n"
> -		"delta since last reset: [%lld:%ld]\n"
> -		"delta since last read:  [%lld:%ld]\n",
> -	(s64)val1.tv_sec, val1.tv_nsec,
> -	(s64)stats->stats_timestamps.last_reset_time.tv_sec,
> -	stats->stats_timestamps.last_reset_time.tv_nsec,
> -	(s64)stats->stats_timestamps.last_read_time.tv_sec,
> -	stats->stats_timestamps.last_read_time.tv_nsec,
> -	(s64)timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_sec,
> -	timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_nsec,
> -	(s64)timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_sec,
> -	timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_nsec);
> +			 "Current time :          [%ptSp]\n"
> +			 "Last stats reset time:  [%ptSp]\n"
> +			 "Last stats read time:   [%ptSp]\n"
> +			 "delta since last reset: [%ptSp]\n"
> +			 "delta since last read:  [%ptSp]\n",

Both delta times are printed at the end.

> +			 &val,
> +			 &stats->stats_timestamps.last_reset_time, &val1,
> +			 &stats->stats_timestamps.last_read_time, &val2);

I think that this should be:

			 &stats->stats_timestamps.last_reset_time,
			 &stats->stats_timestamps.last_read_time,
			 &val1, &val2);

>  	stats->stats_timestamps.last_read_time = val1;

The original code stored the current time in "val1". This should be:

	stats->stats_timestamps.last_read_time = val;

> @@ -416,8 +410,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
>  	jiffies_to_timespec64(stats->misc_stats.last_ack_time, &val2);

Just for record. Another values are stored into @val1 and @val2 at
this point.

>  	len += scnprintf(debug->debug_buffer + len, buf_size - len,
> -		  "Last ISR time: %llu (%8llu.%09lu)\n"
> -		  "Last ACK time: %llu (%8llu.%09lu)\n"
> +		  "Last ISR time: %llu (%ptSp)\n"
> +		  "Last ACK time: %llu (%ptSp)\n"
>  		  "Max ISR jiffies: %llu\n"
>  		  "Max ISR time (ms) (0 denotes < 1 ms): %llu\n"
>  		  "Corr. work done: %llu\n"
> @@ -437,10 +431,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
>  		  "Number of rport not ready: %lld\n"
>  		 "Number of receive frame errors: %lld\n"
>  		 "Port speed (in Mbps): %lld\n",
> -		  (u64)stats->misc_stats.last_isr_time,
> -		  (s64)val1.tv_sec, val1.tv_nsec,
> -		  (u64)stats->misc_stats.last_ack_time,
> -		  (s64)val2.tv_sec, val2.tv_nsec,
> +		  (u64)stats->misc_stats.last_isr_time, &val1,
> +		  (u64)stats->misc_stats.last_ack_time, &val2,

So, this is correct!

>  		  (u64)atomic64_read(&stats->misc_stats.max_isr_jiffies),
>  		  (u64)atomic64_read(&stats->misc_stats.max_isr_time_ms),
>  		  (u64)atomic64_read(&stats->misc_stats.corr_work_done),


Now, I think that there is no need to resend the entire huge patchset.

I could either fix this when comitting or commit the rest and
you could send only this patch for review.

Best Regards,
Petr

PS: All other patches look good. Well, nobody acked 7th patch yet.
    But I think that the change is pretty straightforward and
    we could do it even without an ack.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
