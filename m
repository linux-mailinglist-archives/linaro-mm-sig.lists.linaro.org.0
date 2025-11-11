Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCfeAEz64GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:03:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0D34101CA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:03:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBBE3404F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:03:33 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 308313F6C7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Nov 2025 00:11:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=RQNhfVxW;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of helgaas@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=helgaas@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 708F960147;
	Tue, 11 Nov 2025 00:11:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE3B5C113D0;
	Tue, 11 Nov 2025 00:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762819899;
	bh=UJb6mXnrZynjLpPgHUrW0+nPkNlnIA1ohpPmrhdt5kI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=RQNhfVxWS3kSkUZ3/Yn/h0BmXL51tmLd+96fcvkdQVv1vGLPiWTHRkycOoEeo86n+
	 AomTbI2OwWKrh916BvopP2FmTFRSTMpM+ffKgocFApMJHdp1EKgU6X5hO4qa0osljw
	 17UC1rMSI+vUK4hzsEvsvxu9BntOhbPUYi/m0034GgTDaN8qQYvPNZ+teI5+B2ybWa
	 HwOKozmrkxff/CrJtzPPwDnYAm5CuGW9jLgaRZXE1tGy7RFW1GXxjP1lsvTw64BiD6
	 3+AvpY4WKIjmTgnbEp1K+YKbfLbuPtZz53Jb09WBB7saLr4xY2Ybz2RWqug2curgjQ
	 RYENRwzTM6ubQ==
Date: Mon, 10 Nov 2025 18:11:37 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20251111001137.GA2145521@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251110184727.666591-18-andriy.shevchenko@linux.intel.com>
X-Spamd-Bar: -
X-MailFrom: helgaas@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YDKSAKKB5N7MSWZLC3TOJW2IQB3OFLWA
X-Message-ID-Hash: YDKSAKKB5N7MSWZLC3TOJW2IQB3OFLWA
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:53:09 +0000
CC: Corey Minyard <corey@minyard.net>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>, Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost <matthew.brost@intel.com>, Hans Verkuil <hverkuil@kernel.org>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Ulf Hansson <ulf.hansson@linaro.org>, Vitaly Lifshits <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar <kartilak@cisco.com>, Casey Schaufler <casey@schaufler-ca.com>, Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>, Max Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>, linux-doc@vger.kernel.org, lin
 ux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-sound@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <
 abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Richard Cochran <richardcochran@gmail.com
 >, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 17/23] PCI: epf-test: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YDKSAKKB5N7MSWZLC3TOJW2IQB3OFLWA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3758];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RSPAMD_URIBL_FAIL(0.00)[intel.com:query timed out,linaro.org:query timed out];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_GT_50(0.00)[96];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,kernel.org,ideasonboard.com,linaro.org,wbinvd.org,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev,rasmusvillemoes.dk,chromium.org,lwn.net,padovan.org,ffwll.ch,linux.intel.com,linux.dev,poorly.run,somainline.org,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,hansenpartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org,perex.cz];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RSPAMD_EMAILBL_FAIL(0.00)[linaro-mm-sig.lists.linaro.org:query timed out,andriy.shevchenko.linux.intel.com:query timed out,bhelgaas.google.com:query timed out];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.576];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email]
X-Rspamd-Queue-Id: CA0D34101CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Nov 10, 2025 at 07:40:36PM +0100, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/endpoint/functions/pci-epf-test.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
> index b05e8db575c3..debd235253c5 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
> @@ -331,9 +331,8 @@ static void pci_epf_test_print_rate(struct pci_epf_test *epf_test,
>  		rate = div64_u64(size * NSEC_PER_SEC, ns * 1000);
>  
>  	dev_info(&epf_test->epf->dev,
> -		 "%s => Size: %llu B, DMA: %s, Time: %llu.%09u s, Rate: %llu KB/s\n",
> -		 op, size, dma ? "YES" : "NO",
> -		 (u64)ts.tv_sec, (u32)ts.tv_nsec, rate);
> +		 "%s => Size: %llu B, DMA: %s, Time: %ptSp s, Rate: %llu KB/s\n",
> +		 op, size, dma ? "YES" : "NO", &ts, rate);
>  }
>  
>  static void pci_epf_test_copy(struct pci_epf_test *epf_test,
> -- 
> 2.50.1
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
