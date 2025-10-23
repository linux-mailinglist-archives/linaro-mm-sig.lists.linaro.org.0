Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DamJd724GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0027340FC6B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1DE25404E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:49:01 +0000 (UTC)
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	by lists.linaro.org (Postfix) with ESMTPS id 0D0F33F776
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Oct 2025 09:35:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=ycYUtHe8;
	dmarc=pass (policy=quarantine) header.from=ti.com;
	spf=pass (lists.linaro.org: domain of m-malladi@ti.com designates 198.47.19.246 as permitted sender) smtp.mailfrom=m-malladi@ti.com
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 59N9Z46O495866;
	Thu, 23 Oct 2025 04:35:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1761212104;
	bh=3BZ/Pw5p7gUSP7C6Gq7z9L0Pemml3h4TZLYNOzw8Qhc=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=ycYUtHe89cFtfiNd7ey6DVVPRMDmkAs6MWCSrsgUsC95kjqQ1Khj/QoZYRMzlQWYe
	 OWBSfTgF9r5QvQwXvviTsfqfLg7U6o6gw+owt9LvLNNdtcr+oQrgQbBkA7RijWbS4d
	 aCGVdMICWD7lKZblaBDoxtFInUJUIgiRNwUB+1Uc=
Received: from DFLE203.ent.ti.com (dfle203.ent.ti.com [10.64.6.61])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 59N9Z3XD2614512
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 23 Oct 2025 04:35:03 -0500
Received: from DFLE215.ent.ti.com (10.64.6.73) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 23 Oct
 2025 04:35:03 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE215.ent.ti.com
 (10.64.6.73) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 23 Oct 2025 04:35:03 -0500
Received: from [172.24.18.185] (lt9560gk3.dhcp.ti.com [172.24.18.185])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 59N9Yua52645085;
	Thu, 23 Oct 2025 04:34:56 -0500
Message-ID: <f8285b3a-fe38-4f7b-aada-abbae105ab98@ti.com>
Date: Thu, 23 Oct 2025 15:04:55 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20251014105613.2808674-1-m-malladi@ti.com>
 <20251020174308.59b87130@kernel.org>
Content-Language: en-US
From: "Malladi, Meghana" <m-malladi@ti.com>
In-Reply-To: <20251020174308.59b87130@kernel.org>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-Spamd-Bar: --
X-MailFrom: m-malladi@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U5EPG5GW4PW42CL7BRWPDABAI6XKGHME
X-Message-ID-Hash: U5EPG5GW4PW42CL7BRWPDABAI6XKGHME
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:15 +0000
CC: horms@kernel.org, namcao@linutronix.de, jacob.e.keller@intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, sdf@fomichev.me, john.fastabend@gmail.com, hawk@kernel.org, daniel@iogearbox.net, ast@kernel.org, pabeni@redhat.com, edumazet@google.com, davem@davemloft.net, andrew+netdev@lunn.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/6] Add AF_XDP zero copy support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U5EPG5GW4PW42CL7BRWPDABAI6XKGHME/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[ti.com : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[4205];
	R_DKIM_REJECT(1.00)[ti.com:s=ti-com-17Q1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_CC(0.00)[kernel.org,linutronix.de,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,iogearbox.net,redhat.com,google.com,davemloft.net,lunn.ch,lists.linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,ti.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,ti.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m-malladi@ti.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	NEURAL_SPAM(0.00)[0.408];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0027340FC6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 10/21/2025 6:13 AM, Jakub Kicinski wrote:
> On Tue, 14 Oct 2025 16:26:06 +0530 Meghana Malladi wrote:
>> This series adds AF_XDP zero coppy support to icssg driver.
>>
>> Tests were performed on AM64x-EVM with xdpsock application [1].
>>
>> A clear improvement is seen Transmit (txonly) and receive (rxdrop)
>> for 64 byte packets. 1500 byte test seems to be limited by line
>> rate (1G link) so no improvement seen there in packet rate
>>
>> Having some issue with l2fwd as the benchmarking numbers show 0
>> for 64 byte packets after forwading first batch packets and I am
>> currently looking into it.
> 
> This series stopped applying, could you please respin?

Yes, Thanks for the heads up.

-- 
Thanks,
Meghana Malladi

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
