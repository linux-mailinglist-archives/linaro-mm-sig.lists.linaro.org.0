Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOjlGxf34GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 260CE40FCDB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42516404F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:49:58 +0000 (UTC)
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	by lists.linaro.org (Postfix) with ESMTPS id 59FB73F7A7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Oct 2025 08:44:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=PIAWQ+3k;
	dmarc=pass (policy=quarantine) header.from=ti.com;
	spf=pass (lists.linaro.org: domain of m-malladi@ti.com designates 198.47.23.235 as permitted sender) smtp.mailfrom=m-malladi@ti.com
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 59O8hquH723152;
	Fri, 24 Oct 2025 03:43:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1761295432;
	bh=ZvFR30qFwvZDHVGLed7EJCdp64TbpYruso0PUk2iDPA=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=PIAWQ+3ks1HLabNDuXtiE78yWF1Uy6I+QQ2OkdKTByw0Uee5iZvpFkK5lpy/M/Srk
	 sfQiJnsMDw0SokScbRv4/s79+iin2u0XXE3AYVHEMwHjQn1aIbysLrxcOh/9OT+7UR
	 eJKocEi9lwikTjSAbuD3jH+NKsbwJPuRqrYR5Hi0=
Received: from DFLE201.ent.ti.com (dfle201.ent.ti.com [10.64.6.59])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 59O8hq7m3046177
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 24 Oct 2025 03:43:52 -0500
Received: from DFLE213.ent.ti.com (10.64.6.71) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 24 Oct
 2025 03:43:51 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 24 Oct 2025 03:43:51 -0500
Received: from [172.24.18.185] (lt9560gk3.dhcp.ti.com [172.24.18.185])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 59O8hipM077707;
	Fri, 24 Oct 2025 03:43:45 -0500
Message-ID: <dc82e53c-c565-460d-b268-26d0d5a9ed68@ti.com>
Date: Fri, 24 Oct 2025 14:13:43 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, <horms@kernel.org>,
        <namcao@linutronix.de>, <vadim.fedorenko@linux.dev>,
        <christian.koenig@amd.com>, <sumit.semwal@linaro.org>,
        <sdf@fomichev.me>, <john.fastabend@gmail.com>, <hawk@kernel.org>,
        <daniel@iogearbox.net>, <ast@kernel.org>, <pabeni@redhat.com>,
        <kuba@kernel.org>, <edumazet@google.com>, <davem@davemloft.net>,
        <andrew+netdev@lunn.ch>
References: <20251023093927.1878411-1-m-malladi@ti.com>
 <def1cb92-c0cd-440f-933a-55a5be71251b@intel.com>
Content-Language: en-US
From: "Malladi, Meghana" <m-malladi@ti.com>
In-Reply-To: <def1cb92-c0cd-440f-933a-55a5be71251b@intel.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-Spamd-Bar: --
X-MailFrom: m-malladi@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IHYNGXVYICD3AVDAGC73UBV6RVCHNRNA
X-Message-ID-Hash: IHYNGXVYICD3AVDAGC73UBV6RVCHNRNA
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:21 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v4 0/6] Add AF_XDP zero copy support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IHYNGXVYICD3AVDAGC73UBV6RVCHNRNA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[ti.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[4182];
	R_DKIM_REJECT(1.00)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,kernel.org,linutronix.de,linux.dev,amd.com,linaro.org,fomichev.me,gmail.com,iogearbox.net,redhat.com,google.com,davemloft.net,lunn.ch];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,ti.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m-malladi@ti.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:-];
	NEURAL_HAM(-0.00)[-0.475];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 260CE40FCDB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Jacob,

On 10/24/2025 6:26 AM, Jacob Keller wrote:
> 
> 
> On 10/23/2025 2:39 AM, Meghana Malladi wrote:
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
>>
> 
> Do you think this means there is an issue with the patches or your test
> setup?
> 
> I didn't see anything stand out as a problem to me when reading the series:
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> 

The setup is quite simple. I send broadcast traffic to the dut on which 
I run l2fwd (with xdpsock) and expect the stats to increase. But after 
4096 packets, the stats stop incrementing. And I see this issue only 
with 64 byte packet and not with 1500 byte packets. I am suspecting 
could be some race condition or some bug in our dma controller. I am 
tracking this issue and post a fix for this separately.

-- 
Thanks,
Meghana Malladi

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
