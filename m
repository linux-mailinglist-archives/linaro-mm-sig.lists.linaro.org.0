Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KsSIqL94GnzoAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DD241079C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30656404F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:17:53 +0000 (UTC)
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	by lists.linaro.org (Postfix) with ESMTPS id 033A03F689
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Nov 2025 11:01:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=B1Ne6iGx;
	spf=pass (lists.linaro.org: domain of ulf.hansson@linaro.org designates 74.125.224.52 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-63e393c49f1so3268795d50.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Nov 2025 03:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763377274; x=1763982074; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/RSfdrwfxNJQiZz80hQXf9twz6yOQXKrW5ZfA5HxaxE=;
        b=B1Ne6iGxWrfDaA8bCS/g3cXyejQaZIFXC29EjIVX2qW83/4aXVDGI956XohJSeB9QI
         ceMIBolNZ2Pkrl5kO8muT4fOjcMnV17poFRCM+kB9qONECqPN+s92rAd+re4KQJ0h2HK
         ukweiGqnBUlbK4k+pWnTtTClx9a30meZzJctmzx6T3brUJGqWuEpMLKmdjwxKzA7NLBD
         VjY3+BV+GxrSpKXjcop+IGpCJWkjq7MosllvelFSF3lDer4OBKx9/uscwuFybgz5zxJl
         6oDDt+ZXETS6flLmr4v1AU5Kw+HlBRdoh3NckYg4kn8ApYLZ+G236O2kny0wamd4KlkF
         leYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763377274; x=1763982074;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/RSfdrwfxNJQiZz80hQXf9twz6yOQXKrW5ZfA5HxaxE=;
        b=aPgAMEGgt2vh3ZObTJ/xWOsKI8cV6Pd2yqR4LIR9vcLliqvKvmQddaFfz8aaNQX3uj
         gaqJRPW5K6/5yXWOXyIwseDU73ox7r8smPPRZXrgJ50ICH45LxL8BOYZCxK8XozjJ8eV
         OPYxzTjBuYReGfxs2j4BIGDVhlnBmwW2bMaTzixvSER66Lx1Jt2EexZNsk5ndh4LjyKn
         3ZPrdJg+2P5IvkVUsljCVqIzvnnZmQRvYN65y7cXOeqs7NbDz3eObrmvoAaBzxTRgp3a
         uygGaTmqs+tEi6tGHptq0KtnbJERu3xNt///9SlTCO+i0NXM0ti9IeghR/fHkqkmPj3Y
         QknA==
X-Forwarded-Encrypted: i=1; AJvYcCUbUbpwOnW7btsErObKgHgGSNP7vwq3x9xnXHu8AP06Er3DIfE9+qptW5GSbb0YNbI2eaXGAeWz5rNMarVU@lists.linaro.org
X-Gm-Message-State: AOJu0Yw/A9Kp+4hWgXYq8NxRGZiE37gS5buyuBJhvqIYBlVuBMqZxu06
	wjr5in8Mbji/q0CoEilHjgrMkXa3oyycGv837NHTH21C3N88IwyRGQ1qGXLpa2PkvD4T6R+2T4X
	vkXeWiexqdxd63b5nm5wqlL+WACZU85waxhPruhLAycdO
X-Gm-Gg: ASbGncsrSeW+7JbMqyfJmoUiky0NvPUbQnfVP1NzbHPQRaKzKeBzV8dmQQdB737YuJt
	XmxPoD/goxk5GEyB84BU+mSV5ftJF+o5gEAr0erf94b/Zl8fM1c2EyE++S+nTObHmfn+BQJ/5uV
	DnRcbNpw5UJPiIPXzGaebusBsIkvY4SC4NblPqjDtgDCxW+3/ecAshu/esxCfL8MKiM0D7v+i05
	3hVfhmgY7lkL1Z2QrnwF2O9bvcdy+sbti2PuOee51EXYYGwAPVlIVj5hx+sn8zOpafO3TMYoU60
	7u+sx+8=
X-Google-Smtp-Source: AGHT+IEjvegoUIWfi8UaBD0jEKwHtT+y2Cbu5UHhJ+VHUPJu6okR0AoxTFiIq+cxtmlIxdFEnLzs3e2dtieQR/hKIVs=
X-Received: by 2002:a05:690e:d86:b0:642:84a:7ba4 with SMTP id
 956f58d0204a3-642084a7c6bmr1567493d50.85.1763377273901; Mon, 17 Nov 2025
 03:01:13 -0800 (PST)
MIME-Version: 1.0
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com> <20251113150217.3030010-14-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20251113150217.3030010-14-andriy.shevchenko@linux.intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Nov 2025 12:00:38 +0100
X-Gm-Features: AWmQ_bk2fwrMGKoLr3e8DW_NORum6cYwB-Ynf9Wgckyt3WUUk5QWFuYE7vXt0wM
Message-ID: <CAPDyKFotmQyHzBim-8nib-KVvQaQgA_ELbgdC_Q4Y95-GrvRSw@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-Spamd-Bar: ---
X-MailFrom: ulf.hansson@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OH4WJ6S4AIZSVV47JLF3FQRP7MDIY3T7
X-Message-ID-Hash: OH4WJ6S4AIZSVV47JLF3FQRP7MDIY3T7
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:05 +0000
CC: Corey Minyard <corey@minyard.net>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>, Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost <matthew.brost@intel.com>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Vitaly Lifshits <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar <kartilak@cisco.com>, Hans Verkuil <hverkuil+cisco@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>, Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>, Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>, Max Kellermann <max.kellermann@ionos.com>, linux-doc@
 vger.kernel.org, linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.k
 umar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hc
 a@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 13/21] mmc: mmc_test: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OH4WJ6S4AIZSVV47JLF3FQRP7MDIY3T7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3604];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,kernel.org,wbinvd.org,linux.dev,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ibm.com,ionos.com, vger.kernel.org,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev,rasmusvillemoes.dk,chromium.org,lwn.net,linaro.org,padovan.org,ffwll.ch,linux.intel.com,poorly.run,somainline.org,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,hansenpartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.967];
	RCPT_COUNT_GT_50(0.00)[92];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,cisco];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 24DD241079C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 13 Nov 2025 at 16:03, Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  drivers/mmc/core/mmc_test.c | 20 ++++++++------------
>  1 file changed, 8 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/mmc/core/mmc_test.c b/drivers/mmc/core/mmc_test.c
> index a74089df4547..01d1e62c2ce7 100644
> --- a/drivers/mmc/core/mmc_test.c
> +++ b/drivers/mmc/core/mmc_test.c
> @@ -586,14 +586,11 @@ static void mmc_test_print_avg_rate(struct mmc_test_card *test, uint64_t bytes,
>         rate = mmc_test_rate(tot, &ts);
>         iops = mmc_test_rate(count * 100, &ts); /* I/O ops per sec x 100 */
>
> -       pr_info("%s: Transfer of %u x %u sectors (%u x %u%s KiB) took "
> -                        "%llu.%09u seconds (%u kB/s, %u KiB/s, "
> -                        "%u.%02u IOPS, sg_len %d)\n",
> -                        mmc_hostname(test->card->host), count, sectors, count,
> -                        sectors >> 1, (sectors & 1 ? ".5" : ""),
> -                        (u64)ts.tv_sec, (u32)ts.tv_nsec,
> -                        rate / 1000, rate / 1024, iops / 100, iops % 100,
> -                        test->area.sg_len);
> +       pr_info("%s: Transfer of %u x %u sectors (%u x %u%s KiB) took %ptSp seconds (%u kB/s, %u KiB/s, %u.%02u IOPS, sg_len %d)\n",
> +               mmc_hostname(test->card->host), count, sectors, count,
> +               sectors >> 1, (sectors & 1 ? ".5" : ""), &ts,
> +               rate / 1000, rate / 1024, iops / 100, iops % 100,
> +               test->area.sg_len);
>
>         mmc_test_save_transfer_result(test, count, sectors, ts, rate, iops);
>  }
> @@ -3074,10 +3071,9 @@ static int mtf_test_show(struct seq_file *sf, void *data)
>                 seq_printf(sf, "Test %d: %d\n", gr->testcase + 1, gr->result);
>
>                 list_for_each_entry(tr, &gr->tr_lst, link) {
> -                       seq_printf(sf, "%u %d %llu.%09u %u %u.%02u\n",
> -                               tr->count, tr->sectors,
> -                               (u64)tr->ts.tv_sec, (u32)tr->ts.tv_nsec,
> -                               tr->rate, tr->iops / 100, tr->iops % 100);
> +                       seq_printf(sf, "%u %d %ptSp %u %u.%02u\n",
> +                                  tr->count, tr->sectors, &tr->ts, tr->rate,
> +                                  tr->iops / 100, tr->iops % 100);
>                 }
>         }
>
> --
> 2.50.1
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
