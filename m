Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHOdFHf64GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:04:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 61457410225
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:04:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6618240503
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:04:21 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 7F3223F77E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Nov 2025 08:05:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=NUIP1don;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of hverkuil+cisco@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=hverkuil+cisco@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E86426191A;
	Tue, 11 Nov 2025 08:05:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 758BFC116D0;
	Tue, 11 Nov 2025 08:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762848312;
	bh=L5yMR8hp8K6n3p5Uz6MrsGqp/GNA0slthJowCoOHAbM=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=NUIP1don/7EEjqY/+TuMC7+CtmpG/nW2STT6PfNtEFuFU+HXZKqLbbnEAMH/X/3JJ
	 WVWvR5dg7fblvx/9940inFYgR2C5Gv8VCu1k/MG3tLYRY2844vpHtjrgDZFeK1fdOO
	 JM9vzH3/AWqsGZIFSz7EL/soDKXXUbKHVx/PFFqkGRFYGIzvUKJH2LfpLXAxaji/IR
	 Vs8kH4VSFB0ma/R7k8kHRT0ZJzgV8pEkXXgoavVjbaLi01h+sab77WCI8dWWJ+fyMQ
	 Px0GCJGzWonU67OPy+OHOih22E625vhqYo9ne3sB2zFxHcVeAaZEH4KOlSEdxaEekL
	 55nfUGgl/CXGw==
Message-ID: <fd47654d-c4cc-4cbc-95da-824f1e6bbbf9@kernel.org>
Date: Tue, 11 Nov 2025 09:04:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Hans Verkuil <hverkuil+cisco@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Corey Minyard <corey@minyard.net>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>, Hans Verkuil <hverkuil@kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>, Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Max Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-15-andriy.shevchenko@linux.intel.com>
Content-Language: en-US, nl
In-Reply-To: <20251110184727.666591-15-andriy.shevchenko@linux.intel.com>
X-Spamd-Bar: --
X-MailFrom: hverkuil+cisco@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3MMWXGI5SRVG2WHRQOGQXE77LVF7CUK5
X-Message-ID-Hash: 3MMWXGI5SRVG2WHRQOGQXE77LVF7CUK5
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:53:11 +0000
CC: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@r
 edhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mat
 hieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 14/23] media: v4l2-ioctl: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3MMWXGI5SRVG2WHRQOGQXE77LVF7CUK5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3750];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de,cisco];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,kernel.org,ideasonboard.com,linaro.org,wbinvd.org,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_GT_50(0.00)[96];
	FROM_NEQ_ENVFROM(0.00)[hverkuil@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[rasmusvillemoes.dk,chromium.org,lwn.net,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,linux.dev,poorly.run,somainline.org,intel.com,lunn.ch,davemloft.net,google.com,r edhat.com,enneenne.com,linux.ibm.com,cisco.com,HansenPartnership.com,linuxfoundation.org,redhat.com,efficios.com,linux-foundation.org,perex.cz,suse.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.072];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 61457410225
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 10/11/2025 19:40, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/media/v4l2-core/v4l2-ioctl.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> index 01cf52c3ea33..edc4d97b4161 100644
> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> @@ -791,9 +791,8 @@ static void v4l_print_event(const void *arg, bool write_only)
>  	const struct v4l2_event *p = arg;
>  	const struct v4l2_event_ctrl *c;
>  
> -	pr_cont("type=0x%x, pending=%u, sequence=%u, id=%u, timestamp=%llu.%9.9llu\n",
> -			p->type, p->pending, p->sequence, p->id,
> -			p->timestamp.tv_sec, p->timestamp.tv_nsec);
> +	pr_cont("type=0x%x, pending=%u, sequence=%u, id=%u, timestamp=%ptSp\n",
> +		p->type, p->pending, p->sequence, p->id, &p->timestamp);

Hmm, p->timestamp is a struct __kernel_timespec, but that's not quite the
same thing as struct timespec64:

struct __kernel_timespec {
        __kernel_time64_t       tv_sec;                 /* seconds */
        long long               tv_nsec;                /* nanoseconds */
};

vs:

struct timespec64 {
        time64_t        tv_sec;                 /* seconds */
        long            tv_nsec;                /* nanoseconds */
};

So I'm not sure this will work.

Regards,

	Hans

>  	switch (p->type) {
>  	case V4L2_EVENT_VSYNC:
>  		printk(KERN_DEBUG "field=%s\n",

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
