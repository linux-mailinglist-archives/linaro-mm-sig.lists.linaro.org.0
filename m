Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BskMa774GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:09:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9F34104AA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:09:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8188A40983
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:09:33 +0000 (UTC)
Received: from mail-oa1-f66.google.com (mail-oa1-f66.google.com [209.85.160.66])
	by lists.linaro.org (Postfix) with ESMTPS id 772E83F702
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Nov 2025 14:37:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=minyard-net.20230601.gappssmtp.com header.s=20230601 header.b=RvIbCBgy;
	dmarc=none;
	spf=none (lists.linaro.org: domain of corey@minyard.net has no SPF policy when checking 209.85.160.66) smtp.mailfrom=corey@minyard.net
Received: by mail-oa1-f66.google.com with SMTP id 586e51a60fabf-3e7e57450ceso864618fac.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Nov 2025 06:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1762871850; x=1763476650; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sI/Bx88S/ljGSNn+PL5Rjkz6jNPZ9Ne5hLvzfkx+saI=;
        b=RvIbCBgy48UlkGDGKDeZxIWNrmCzLlyhCfuwKO/4D1EaNY9wNiIi0SkXfUONM0iVKn
         SD1zZfkMsfabR82V6XiCCHCoIPthCjsxfH2reCkTQPFW870faiBtfOpaOGFCH7/L8BF1
         Ls9LiKsA91ov18OLh1EPDILJ8TpMnrC8v3KyfbvxGjSflYsd1ApAT8E0dgy9DR4jwJUJ
         06SUpiOF2L/rvzr8WZ/DqJ08aJofOyw8p0OVxVxdb/oqfVVE98NIFEFemLFBN55F2IG2
         9f69THZVsJ9PRI/UIltBnQCg1ooBvv0mxCrf8NAwNFFWMqvYcg7Sfyu6PrQUnmB8PCCc
         ePzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762871850; x=1763476650;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sI/Bx88S/ljGSNn+PL5Rjkz6jNPZ9Ne5hLvzfkx+saI=;
        b=EBuUWEF4lArnEhVb7lXpAGDojLXQqQIM+WLVCtmW4tOEDMUKCftpWVP/C32Y1zpiQP
         Un9FbnezVV9mSOTdKJaLqLKYnBR2KyoyLeP4JPyaxxRZefrRWOs7ko+oJawpTZQf3tvY
         04r4ym609207SPw2saKpen1C/ZOEU6HnsRY8pMhiCC5diUpap4Z7Pc64uhseSCXBrmoB
         DE1HebXGNTtY1+eWiT6JhaSgOpdhOE1rG6ZotTFs0hs3gvvPA1VPgPH7sBzbEiCdVasF
         jCMkecinL7sOs21ugAq8D7OxjRIPNvn2mYlrJta80UzGufFuvPCQRGnCb4xowPwopS6x
         5xHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNNHRzNW4dXHQdwK+HcJOrS2nk1oekMNn87WUCB4Xak0oA22/ooM3yfXJZBrghTxGPZCajxfxIf7RbyJoT@lists.linaro.org
X-Gm-Message-State: AOJu0Yy/inzyQEuzMkFftETtKlP1WcyA2vsBIoChfPkDa800wANTIVus
	tHJdPx6Z9kba73PwxOVfCYJjH98Ht3qOLZ/2Sz95s/8dEBDsNtQAABXOrlIFlGqCgvw=
X-Gm-Gg: ASbGncurLX3BR1qm3tG/j566YTJznHoiX1LUQ3qWW4VHcamp0rPSiSzTSGC+y+Uvahm
	LjTlxT9KPqaFQYXcMrRhbacvPSyviYSGV2qjF8AhLNG8pdRD34JZSWRT/MsalwtbhEzeVFE9SPM
	kESD6Qbj9ToyU2HRuN+OcZsugFR1Iv8qUOWZQ7+MOzkL7cH8uCv/L2trJTCYPFhqW2lU0phOV5c
	XhPEJWPyoGkJ6J/eyCEou1fab08LYXrEDQnMLfNZSlkDuBiSjqzveZds5mdKDg4OJVPV/Lo7hvD
	XCBy/A2Mi4NQhzD33LS8AQeh+qBa/4QuNKMOcqe2yfNjevGoQXDgqRtQJc3JM13KEEf4IAsq0n3
	tSb8fHXgGQ2FGJMdLNPXI7JMjB41fdk9Kiu9IVKiwYJ76VE/YGONJume+UE/dT2H1qMiamriwC+
	fX2m8=
X-Google-Smtp-Source: AGHT+IFusuA/Ax3anjd0HIltuToxJUS02/udclYoHdoDI29Kk3VNxq4/rhyMyYWudQr5f0WcO3jkBQ==
X-Received: by 2002:a05:6870:4792:b0:3e7:f4a9:588b with SMTP id 586e51a60fabf-3e7f4a9b0bcmr4110818fac.15.1762871849590;
        Tue, 11 Nov 2025 06:37:29 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:b4e9:19a3:cdaf:7174])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e7d6f7a27dsm4861066fac.0.2025.11.11.06.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 06:37:29 -0800 (PST)
Date: Tue, 11 Nov 2025 08:37:24 -0600
From: Corey Minyard <corey@minyard.net>
To: Sergey Senozhatsky <senozhatsky@chromium.org>
Message-ID: <aRNKJIyk2ne39ScE@mail.minyard.net>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-13-andriy.shevchenko@linux.intel.com>
 <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
X-Spamd-Bar: -
X-MailFrom: corey@minyard.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FNBXQFUBICFORXGVPYNMTJWFMVLSI5AT
X-Message-ID-Hash: FNBXQFUBICFORXGVPYNMTJWFMVLSI5AT
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:53:30 +0000
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Christian K??nig <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>, Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost <matthew.brost@intel.com>, Hans Verkuil <hverkuil@kernel.org>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Ulf Hansson <ulf.hansson@linaro.org>, Vitaly Lifshits <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar <kartilak@cisco.com>, Casey Schaufler <casey@schaufler-ca.com>, Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>, Max Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>, linux-doc@vger.kernel.org,
  linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-sound@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <je
 sszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas Hellstr??m <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Krzysztof Wilczy??ski <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.c
 om>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: corey@minyard.net
Subject: [Linaro-mm-sig] Re: [PATCH v1 12/23] ipmi: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FNBXQFUBICFORXGVPYNMTJWFMVLSI5AT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3744];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,kernel.org,ideasonboard.com,linaro.org,wbinvd.org,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev,rasmusvillemoes.dk,lwn.net,padovan.org,ffwll.ch,linux.dev,poorly.run,somainline.org,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,linux.ibm.c om,hansenpartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org,perex.cz];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	RCPT_COUNT_GT_50(0.00)[95];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.988];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,minyard.net:replyto,mail.minyard.net:mid]
X-Rspamd-Queue-Id: 7E9F34104AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Nov 11, 2025 at 05:08:25PM +0900, Sergey Senozhatsky wrote:
> On (25/11/10 19:40), Andy Shevchenko wrote:
> [..]
> > +	dev_dbg(smi_info->io.dev, "**%s: %ptSp\n", msg, &t);
> 
> Strictly speaking, this is not exactly equivalent to %lld.%9.9ld
> or %lld.%6.6ld but I don't know if that's of any importance.
> 

Dang it, I'm traveling and used the wrong way to send the previous response.
Sorry.

Anyway, yes, it's not equivalent, but it's not important.  It's better
to use a standard output format.  Thanks for pointing this out.

Thanks,

-corey
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
