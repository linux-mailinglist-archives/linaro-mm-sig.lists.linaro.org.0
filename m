Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MdKaNHxwVmpW5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:23:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E1F7575DB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:23:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=igalia.com header.s=20170329 header.b=AEoLn+Ld;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73DF040C26
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:23:07 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id CB67D4015A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2026 14:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kpWouPUokyZHgzvFPproZHj6/Ef0PkuYaNYWYN2xtR8=; b=AEoLn+LdolVTfzo+WS/CSbMoSW
	5Gfx2w4VqTbyrFuhlcn+8gzRsbrwAeqxVrjAbbebSSpIwazI6pycrGdZlF/9tH9C81E0FZFEPRUoa
	CETcJ01vptZU8/XSKO/ot7xBKoijKfsBDF29GD1F4FcLolmF2SOg0WmS6/z08tApWqNB5mX0n1rpm
	YJxM3tJDkCZx/5xvJHSLKiCsdVfi07giNEelNnuKmwOvA01XNsp4zVEbvVOreCkLAd1WfS11dq1Ri
	eGdCnxaGfdaEeTMSCfNF3ubsDSLnlH6IShbIM3jNUnme4J0lCdbrAt2g9teMDtA7QmCjYgN03V528
	z+y/HfMw==;
Received: from [90.240.106.137] (helo=[192.168.0.116])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wgkS6-009mku-2u; Mon, 06 Jul 2026 16:37:42 +0200
Message-ID: <e9e12e30-80c1-4650-9d71-4107517bc956@igalia.com>
Date: Mon, 6 Jul 2026 15:37:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Tvrtko Ursulin <tursulin@ursulin.net>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Marco Pagani
 <marco.pagani@linux.dev>, Boris Brezillon <boris.brezillon@collabora.com>
References: <20260701085920.3253248-2-phasta@kernel.org>
 <20260701085920.3253248-3-phasta@kernel.org>
 <a4091099-1931-4ca2-a81a-9c3321b123a8@ursulin.net>
 <51fbde808bd059510d667d130afae179626303be.camel@mailbox.org>
 <ce33edbb-11dd-4722-bb87-d16155f35a75@igalia.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <ce33edbb-11dd-4722-bb87-d16155f35a75@igalia.com>
X-Spamd-Bar: /
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MUMWD2Z3XO5LXWBULTMB3A5XUXWDYC2C
X-Message-ID-Hash: MUMWD2Z3XO5LXWBULTMB3A5XUXWDYC2C
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:30 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] drm/sched: Protect entity->last_scheduled with spinlock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MUMWD2Z3XO5LXWBULTMB3A5XUXWDYC2C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[194];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,ursulin.net,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,linux.dev,collabora.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:tursulin@ursulin.net,m:matthew.brost@intel.com,m:dakr@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:marco.pagani@linux.dev,m:boris.brezillon@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,igalia.com:from_mime,igalia.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 65E1F7575DB



On 06/07/2026 09:45, Tvrtko Ursulin wrote:
> 
> On 03/07/2026 15:47, Philipp Stanner wrote:
>> On Fri, 2026-07-03 at 12:27 +0100, Tvrtko Ursulin wrote:

8><

>>> I am also happy to give it a spin on the Steam Deck to see if I can
>>> observe anything.
>>
>> Could be interesting.
> 
> Okay I'll try to do it in reasonable time. You can either respin or wait 
> for it, I don't mind either way.

On the topic of benchmarking, I gave it a quick spin against four unsync 
instances of vkgears. Point being seeing if something can be shown on 
more datacenter deployments with many cores submitting and large 
aggregate "fps".

x stock.fps
+ phasta.fps
+----------------------------------------------------------------------+
|                              +                                       |
|                           +  ++                                      |
|                           +  ++                                      |
|                       +   +  ++ +  x                                 |
|                       + + +  ++ +  x                                 |
|                    +  +++ + +++ +  x                                 |
|                    +  +++ +++++ +x x                                 |
|                    +  +++ +++++++x x *                               |
|                   ++  +++ +++++++x *x*xx    x                        |
|                   ++  +++x+++++++xx*x**x    x                        |
|                   ++  +*+*+++*+++xx*x*** x xx                        |
|               x  +++  +*+*+*+**+*x******xxxxx                        |
|            x  xx**++  **+*+****+********xxxxx x    x                 |
|        x  +xx xx**++ +******************xxxxxxx x  xx                |
|      x xxx**x x**************************xx*xxx xxxxx                |
|xx    xxxxx**x*****************************x**x**x*x*x   x x x  x    x|
|                    ||_______A___A_M|________|                        |
+----------------------------------------------------------------------+
     N           Min           Max        Median           Avg        Stddev
x 218      5446.984      5862.578      5656.121     5642.9429     76.667613
+ 227      5510.432      5762.926      5620.999     5620.3585     45.407235
Difference at 95.0% confidence
	-22.5844 +/- 11.6534
	-0.400224% +/- 0.206513%
	(Student's t, pooled s = 62.6985)

Numbers are average FPS per vkgears instance. Total run each is around 
40 seconds.

More locking does appear to show a small decrease in throughput and, 
curiously, a tighter range between min and max. Whether or not that is 
telling us something about the lock cycles and inter core 
synchronisation I am not sure. Could be just noise and that more runs 
are needed. I can do that tomorrow.

Regards,

Tvrtko

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
