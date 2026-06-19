Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tB6FBoBfPWp32AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:04:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 961EB6C7ADE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:03:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACC144444D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:03:58 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id F301240983
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2026 14:41:42 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9F992601E2;
	Fri, 19 Jun 2026 14:41:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F3941F000E9;
	Fri, 19 Jun 2026 14:41:39 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: jgg@nvidia.com
Date: Fri, 19 Jun 2026 16:41:37 +0200
Message-ID: <20260619144137.1582409-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <1-v1-0a349a394eff+14110-dmabuf_kunit_jgg@nvidia.com>
References: <1-v1-0a349a394eff+14110-dmabuf_kunit_jgg@nvidia.com>
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: SRS0=m/gl=EP=glider.be=geert+renesas@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: I3S4ZMBJOULAHX2TFLMK3AC4IQFOZBPO
X-Message-ID-Hash: I3S4ZMBJOULAHX2TFLMK3AC4IQFOZBPO
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:03:04 +0000
CC: airlied@gmail.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, patches@lists.linux.dev, rodrigo.vivi@intel.com, simona@ffwll.ch, sumit.semwal@linaro.org, tursulin@ursulin.net, Brendan Higgins <brendan.higgins@linux.dev>, David Gow <david@davidgow.net>, kunit-dev@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] dma-buf: Change st-dma-resv.c to use kunit
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I3S4ZMBJOULAHX2TFLMK3AC4IQFOZBPO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.49 / 15.00];
	DATE_IN_PAST(1.00)[146];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jgg@nvidia.com,m:airlied@gmail.com,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:intel-gfx@lists.freedesktop.org,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:linaro-mm-sig@lists.linaro.org,m:linux-media@vger.kernel.org,m:patches@lists.linux.dev,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:tursulin@ursulin.net,m:brendan.higgins@linux.dev,m:david@davidgow.net,m:kunit-dev@googlegroups.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de,renesas];
	DMARC_NA(0.00)[glider.be];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[geert@glider.be,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,linux.intel.com,lists.linaro.org,vger.kernel.org,lists.linux.dev,intel.com,ffwll.ch,linaro.org,ursulin.net,linux.dev,davidgow.net,googlegroups.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@glider.be,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,glider.be:mid,glider.be:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 961EB6C7ADE

	Hi Jason,

> Modernize the open coded test framework by using kunit.
> 
> The kunit tool can be used to build a kernel and run it in a VM with:
> 
> $ tools/testing/kunit/kunit.py run --build_dir build_kunit_x86_64 --arch x86_64 --kunitconfig ./drivers/dma-buf/.kunitconfig
> 
> Along with the other ways to run kunits.
> 
> To make the kunit tool work like this the DMABUF_KUNIT_TEST kconfig must
> select DMA_SHARED_BUFFER to get it turned on without building a driver
> using it.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>

Thanks for your patch, which is now commit 15b9bde78baddc27 ("dma-buf:
Change st-dma-resv.c to use kunit") upstream.

> --- /dev/null
> +++ b/drivers/dma-buf/.kunitconfig
> @@ -0,0 +1,2 @@
> +CONFIG_KUNIT=y
> +CONFIG_DMABUF_KUNIT_TEST=y
> diff --git a/drivers/dma-buf/Kconfig b/drivers/dma-buf/Kconfig
> index 8d4f2f89f24e3c..7d13c8f4484dd3 100644
> --- a/drivers/dma-buf/Kconfig
> +++ b/drivers/dma-buf/Kconfig
> @@ -54,6 +54,14 @@ config DMABUF_SELFTESTS
>  	default n
>  	depends on DMA_SHARED_BUFFER
>  
> +config DMABUF_KUNIT_TEST
> +	tristate "KUnit tests for DMA-BUF" if !KUNIT_ALL_TESTS
> +	depends on KUNIT
> +	select DMA_SHARED_BUFFER

This select means that enabling KUNIT_ALL_TESTS also enables extra
functionality, which may not be desirable in a production system.
Unfortunately DMA_SHARED_BUFFER is invisible, so just changing this from
"select" to "depends on" may not be the most desirable solution.

> +	default KUNIT_ALL_TESTS
> +	help
> +	   Enable kunit tests for DMA-BUF
> +
>  menuconfig DMABUF_HEAPS
>  	bool "DMA-BUF Userland Memory Heaps"
>  	select DMA_SHARED_BUFFER

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
