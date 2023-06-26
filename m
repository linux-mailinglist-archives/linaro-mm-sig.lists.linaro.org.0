Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E98E73D735
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jun 2023 07:35:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E999A3F0CC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jun 2023 05:35:29 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lists.linaro.org (Postfix) with ESMTP id 0988F3ED2A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jun 2023 05:35:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.71 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com;
	dmarc=none
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id CBF318139;
	Mon, 26 Jun 2023 13:34:56 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 26 Jun
 2023 13:34:56 +0800
Received: from [192.168.1.115] (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 26 Jun
 2023 13:34:56 +0800
Message-ID: <32d1db3e-be6a-5219-b886-14c5f5102a5f@starfivetech.com>
Date: Mon, 26 Jun 2023 13:34:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <CGME20230602081437epcas1p36b7961b1d3f01dbed3fe2672a92e9d92@epcas1p3.samsung.com>
 <20230602074043.33872-10-keith.zhao@starfivetech.com>
 <003a01d9a57b$c140f340$43c2d9c0$@samsung.com>
From: Keith Zhao <keith.zhao@starfivetech.com>
To: undisclosed-recipients:;
In-Reply-To: <003a01d9a57b$c140f340$43c2d9c0$@samsung.com>
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Spamd-Result: default: False [1.80 / 15.00];
	R_UNDISC_RCPT(3.00)[];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_RECIPIENTS(2.00)[m:,s:linaro-mm-sig@lists.linaro.org];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	R_DKIM_NA(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[61.152.239.71:from];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	TO_DN_ALL(0.00)[];
	URIBL_BLOCKED(0.00)[fd01.gateway.ufhost.com:helo,fd01.gateway.ufhost.com:rdns,infradead.org:email];
	NEURAL_SPAM(0.00)[0.801];
	DMARC_NA(0.00)[starfivetech.com];
	FROM_EQ_ENVFROM(0.00)[]
X-Rspamd-Action: no action
X-Spam-Level: *
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0988F3ED2A
X-Spamd-Bar: +
Message-ID-Hash: 5BMCVIBPQ7FFZN3KYP5RJX67OO5AUJ77
X-Message-ID-Hash: 5BMCVIBPQ7FFZN3KYP5RJX67OO5AUJ77
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 9/9] drm/verisilicon: Add starfive hdmi driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5BMCVIBPQ7FFZN3KYP5RJX67OO5AUJ77/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

yes I tested 
modetest -M starfive -D 0 -s 116@31:1280x720-59.94 -v
modetest -M starfive -D 0 -s 116@31:1920x1080 -v

and the second command will repeat the problem
as you advise at the beginning
I call the "starfive_hdmi_setup"  function in the "starfive_hdmi_encoder_enable"
instead of "starfive_hdmi_encoder_mode_set"
resolve the problem
i will add this modify in my next patch

Thank you Hoegeun

On 2023/6/23 10:38, Hoegeun Kwon wrote:
> Hi Keith,
> 
> There is a problem with stopping when changing modes.
> 
> Below test log
> 
> root:~> modetest -Mstarfive -c
> Connectors:
> id      encoder status          name            size (mm)       modes
> encoders
> 116     115     connected       HDMI-A-1        320x180         51      115
>   modes:
>         index name refresh (Hz) hdisp hss hse htot vdisp vss vse vtot
>   #0 1280x800 59.91 1280 1328 1360 1440 800 803 809 823 71000 flags: phsync,
> pvsync; type: preferred, driver
>   #1 1920x1080 60.00 1920 2008 2052 2200 1080 1084 1089 1125 148500 flags:
> phsync, pvsync; type: driver
> [...]
> 
> root:~> modetest -Mstarfive -s 116:#0 -v
> setting mode 1280x800-59.91Hz on connectors 116, crtc 31
> freq: 60.65Hz
> freq: 59.91Hz
> freq: 59.91Hz
> 
> root:~> modetest -Mstarfive -s 116:#1 -v
> setting mode 1920x1080-60.00Hz on connectors 116, crtc 31
> [   94.535626] rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
> [   94.560985] rcu:     1-...0: (20 ticks this GP)
> idle=c9bc/1/0x4000000000000000 softirq=3869/3871 fqs=1120
> [   94.589532] rcu:     (detected by 3, t=5264 jiffies, g=4645, q=63
> ncpus=4)
> [   94.615335] Task dump for CPU 1:
> [   94.637723] task:modetest        state:R  running task     stack:0
> pid:407   ppid:397    flags:0x00000008
> [   94.667299] Call Trace:
> [   94.689297] [<ffffffff80d1e8fc>] __schedule+0x2a8/0xa52
> [   94.714221] [<ffffffff80d1f100>] schedule+0x5a/0xdc
> [   94.738626] [<ffffffff80d25a14>] schedule_timeout+0x220/0x2a6
> [   94.763762] [<ffffffff80d2037a>] wait_for_completion+0xfe/0x126
> [   94.789073] [<ffffffff8002ffe4>] kthread_flush_worker+0x82/0xa0
> 
> 
>> -----Original Message-----
>> From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf Of
>> Keith Zhao
>> Sent: Friday, June 2, 2023 4:41 PM
>> To: dri-devel@lists.freedesktop.org; devicetree@vger.kernel.org; linux-
>> kernel@vger.kernel.org; linux-riscv@lists.infradead.org; linux-
>> media@vger.kernel.org; linaro-mm-sig@lists.linaro.org
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Sumit Semwal
>> <sumit.semwal@linaro.org>; Emil Renner Berthing <kernel@esmil.dk>;
>> Shengyang Chen <shengyang.chen@starfivetech.com>; Conor Dooley
>> <conor+dt@kernel.org>; Albert Ou <aou@eecs.berkeley.edu>; Thomas
>> Zimmermann <tzimmermann@suse.de>; Jagan Teki <jagan@edgeble.ai>; Rob
>> Herring <robh+dt@kernel.org>; Chris Morgan <macromorgan@hotmail.com>; Paul
>> Walmsley <paul.walmsley@sifive.com>; Keith Zhao
>> <keith.zhao@starfivetech.com>; Bjorn Andersson <andersson@kernel.org>;
>> Changhuang Liang <changhuang.liang@starfivetech.com>; Jack Zhu
>> <jack.zhu@starfivetech.com>; Palmer Dabbelt <palmer@dabbelt.com>; Shawn
>> Guo <shawnguo@kernel.org>; christian.koenig@amd.com
>> Subject: [PATCH 9/9] drm/verisilicon: Add starfive hdmi driver
>> 
>> Add HDMI dirver for StarFive SoC JH7110.
>> 
>> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
>> ---
>>  drivers/gpu/drm/verisilicon/Kconfig         |  11 +
>>  drivers/gpu/drm/verisilicon/Makefile        |   1 +
>>  drivers/gpu/drm/verisilicon/starfive_hdmi.c | 928 ++++++++++++++++++++
>> drivers/gpu/drm/verisilicon/starfive_hdmi.h | 296 +++++++
>>  drivers/gpu/drm/verisilicon/vs_drv.c        |   6 +
>>  drivers/gpu/drm/verisilicon/vs_drv.h        |   4 +
>>  6 files changed, 1246 insertions(+)
>>  create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.c
>>  create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.h
> 
> [...]
> 
>> diff --git a/drivers/gpu/drm/verisilicon/starfive_hdmi.c
>> b/drivers/gpu/drm/verisilicon/starfive_hdmi.c
>> new file mode 100644
>> index 000000000000..128ecca03309
>> --- /dev/null
>> +++ b/drivers/gpu/drm/verisilicon/starfive_hdmi.c
>> @@ -0,0 +1,928 @@
> 
> [...]
> 
>> +static int starfive_hdmi_setup(struct starfive_hdmi *hdmi,
>> +			       struct drm_display_mode *mode) {
> 
> [...]
> 
>> +	return 0;
>> +}
>> +
>> +static void starfive_hdmi_encoder_mode_set(struct drm_encoder *encoder,
>> +					   struct drm_display_mode *mode,
>> +					   struct drm_display_mode
> *adj_mode) {
>> +	struct starfive_hdmi *hdmi = encoder_to_hdmi(encoder);
>> +
>> +	starfive_hdmi_setup(hdmi, adj_mode);
> 
> When starfive_hdmi_setup runs here,
> when changing the mode, a problem occurs because try to write a value to reg
> in a state that is not resumed after suspend.
> 
>> +
>> +	memcpy(&hdmi->previous_mode, adj_mode, sizeof(hdmi-
>> >previous_mode)); }
>> +
>> +static void starfive_hdmi_encoder_enable(struct drm_encoder *encoder) {
>> +	struct starfive_hdmi *hdmi = encoder_to_hdmi(encoder);
>> +
>> +	pm_runtime_get_sync(hdmi->dev);
> 
> So if move the call point of starfive_hdmi_setup here, it works normally.
> 
>> +}
> 
> Best regards,
> Hoegeun
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
