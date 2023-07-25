Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBAC7614F3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Jul 2023 13:24:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A03BA441A0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Jul 2023 11:24:06 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lists.linaro.org (Postfix) with ESMTP id D55103E975
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Jul 2023 11:23:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.75 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com;
	dmarc=none
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id B0D2F24E282;
	Tue, 25 Jul 2023 19:23:46 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 25 Jul
 2023 19:23:46 +0800
Received: from [192.168.60.113] (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 25 Jul
 2023 19:23:45 +0800
Message-ID: <3dd360e2-7521-6305-c543-58830cd60ec0@starfivetech.com>
Date: Tue, 25 Jul 2023 19:23:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Keith Zhao <keith.zhao@starfivetech.com>
To: Lucas Stach <l.stach@pengutronix.de>, <dri-devel@lists.freedesktop.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-media@vger.kernel.org>,
	<linaro-mm-sig@lists.linaro.org>
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602074043.33872-4-keith.zhao@starfivetech.com>
 <e0eeae3b35e8efac7c577ca3159abcf7f43d5082.camel@pengutronix.de>
 <b8e51384-4781-2710-e94f-38a88f43b801@starfivetech.com>
In-Reply-To: <b8e51384-4781-2710-e94f-38a88f43b801@starfivetech.com>
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D55103E975
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[starfivetech.com];
	HAS_XOIP(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,esmil.dk,starfivetech.com,kernel.org,eecs.berkeley.edu,suse.de,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: 2YYQEIN6ZVAYFGMHCT6YAL666CQPEGBL
X-Message-ID-Hash: 2YYQEIN6ZVAYFGMHCT6YAL666CQPEGBL
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] drm/verisilicon: Add basic drm driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2YYQEIN6ZVAYFGMHCT6YAL666CQPEGBL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 2023/7/25 11:12, Keith Zhao wrote:
> 
> 
> On 2023/6/7 16:53, Lucas Stach wrote:
>> Hi Keith,
>> 
>> Am Freitag, dem 02.06.2023 um 15:40 +0800 schrieb Keith Zhao:
>>> Add a basic platform driver of the DRM driver for JH7110 SoC.
>>> 
>>> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
>>> ---
>>>  MAINTAINERS                          |   2 +
>>>  drivers/gpu/drm/Kconfig              |   2 +
>>>  drivers/gpu/drm/Makefile             |   1 +
>>>  drivers/gpu/drm/verisilicon/Kconfig  |  13 ++
>>>  drivers/gpu/drm/verisilicon/Makefile |   6 +
>>>  drivers/gpu/drm/verisilicon/vs_drv.c | 284 +++++++++++++++++++++++++++
>>>  drivers/gpu/drm/verisilicon/vs_drv.h |  48 +++++
>>>  include/uapi/drm/drm_fourcc.h        |  83 ++++++++
>>>  include/uapi/drm/vs_drm.h            |  50 +++++
>>>  9 files changed, 489 insertions(+)
>>>  create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
>>>  create mode 100644 drivers/gpu/drm/verisilicon/Makefile
>>>  create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.c
>>>  create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.h
>>>  create mode 100644 include/uapi/drm/vs_drm.h
>>> 
>>> 
>>> [...]
>>> +#endif /* __VS_DRV_H__ */
>>> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
>>> index de703c6be969..af4fb50f9207 100644
>>> --- a/include/uapi/drm/drm_fourcc.h
>>> +++ b/include/uapi/drm/drm_fourcc.h
>>> @@ -419,6 +419,7 @@ extern "C" {
>>>  #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
>>>  #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
>>>  #define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
>>> +#define DRM_FORMAT_MOD_VENDOR_VS      0x0b
>>>  
>>>  /* add more to the end as needed */
>>>  
>>> @@ -1519,6 +1520,88 @@ drm_fourcc_canonicalize_nvidia_format_mod(__u64 modifier)
>>>  #define AMD_FMT_MOD_CLEAR(field) \
>>>  	(~((__u64)AMD_FMT_MOD_##field##_MASK << AMD_FMT_MOD_##field##_SHIFT))
>>>  
>>> +#define DRM_FORMAT_MOD_VS_TYPE_NORMAL        0x00
>>> +#define DRM_FORMAT_MOD_VS_TYPE_COMPRESSED    0x01
>>> +#define DRM_FORMAT_MOD_VS_TYPE_CUSTOM_10BIT  0x02
>>> +#define DRM_FORMAT_MOD_VS_TYPE_MASK     ((__u64)0x3 << 54)
>>> +
>>> +#define fourcc_mod_vs_code(type, val) \
>>> +	fourcc_mod_code(VS, ((((__u64)type) << 54) | (val)))
>>> +
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_MODE_MASK    0x3F
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_8X8_XMAJOR   0x00
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_8X8_YMAJOR   0x01
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_16X4     0x02
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_8X4      0x03
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_4X8      0x04
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_16X4   0x06
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_64X4     0x07
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_32X4     0x08
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_256X1  0x09
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_128X1  0x0A
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_64X4   0x0B
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_256X2  0x0C
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_128X2  0x0D
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_128X4  0x0E
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_64X1   0x0F
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_16X8     0x10
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_8X16     0x11
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_512X1  0x12
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_32X4   0x13
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_64X2   0x14
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_32X2   0x15
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_32X1   0x16
>>> +#define DRM_FORMAT_MOD_VS_DEC_RASTER_16X1   0x17
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_128X4    0x18
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_256X4    0x19
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_512X4    0x1A
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_16X16    0x1B
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_32X16    0x1C
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_64X16    0x1D
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_128X8    0x1E
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_8X4_S    0x1F
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_16X4_S   0x20
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_32X4_S   0x21
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_16X4_LSB 0x22
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_32X4_LSB 0x23
>>> +#define DRM_FORMAT_MOD_VS_DEC_TILE_32X8     0x24
>>> +
>>> +#define DRM_FORMAT_MOD_VS_DEC_ALIGN_32      (0x01 << 6)
>>> +#define DRM_FORMAT_MOD_VS_DEC_ALIGN_64      (0x01 << 7)
>>> +
>>> +#define fourcc_mod_vs_dec_code(tile, align) \
>>> +	fourcc_mod_vs_code(DRM_FORMAT_MOD_VS_TYPE_COMPRESSED, \
>>> +				((tile) | (align)))
>>> +
>>> +#define DRM_FORMAT_MOD_VS_NORM_MODE_MASK        0x1F
>>> +#define DRM_FORMAT_MOD_VS_LINEAR                0x00
>>> +#define DRM_FORMAT_MOD_VS_TILED4x4              0x01
>>> +#define DRM_FORMAT_MOD_VS_SUPER_TILED_XMAJOR    0x02
>>> +#define DRM_FORMAT_MOD_VS_SUPER_TILED_YMAJOR    0x03
>>> +#define DRM_FORMAT_MOD_VS_TILE_8X8              0x04
>>> +#define DRM_FORMAT_MOD_VS_TILE_MODE1            0x05
>>> +#define DRM_FORMAT_MOD_VS_TILE_MODE2            0x06
>>> +#define DRM_FORMAT_MOD_VS_TILE_8X4              0x07
>>> +#define DRM_FORMAT_MOD_VS_TILE_MODE4            0x08
>>> +#define DRM_FORMAT_MOD_VS_TILE_MODE5            0x09
>>> +#define DRM_FORMAT_MOD_VS_TILE_MODE6            0x0A
>>> +#define DRM_FORMAT_MOD_VS_SUPER_TILED_XMAJOR_8X4    0x0B
>>> +#define DRM_FORMAT_MOD_VS_SUPER_TILED_YMAJOR_4X8    0x0C
>>> +#define DRM_FORMAT_MOD_VS_TILE_Y                0x0D
>>> +#define DRM_FORMAT_MOD_VS_TILE_128X1            0x0F
>>> +#define DRM_FORMAT_MOD_VS_TILE_256X1            0x10
>>> +#define DRM_FORMAT_MOD_VS_TILE_32X1             0x11
>>> +#define DRM_FORMAT_MOD_VS_TILE_64X1             0x12
>>> +#define DRM_FORMAT_MOD_VS_TILE_MODE4X4          0x15
>>> +
>>> +#define fourcc_mod_vs_norm_code(tile) \
>>> +	fourcc_mod_vs_code(DRM_FORMAT_MOD_VS_TYPE_NORMAL, \
>>> +				(tile))
>>> +
>>> +#define fourcc_mod_vs_custom_code(tile) \
>>> +	fourcc_mod_vs_code(DRM_FORMAT_MOD_VS_TYPE_CUSTOM_10BIT, \
>>> +				(tile))
>>> +
>> 
>> You are opening a new namespace for what is effectively the VIVANTE
>> tiling. While your list seems much more exhaustive than the (reverse
>> engineered) list provided under the VIVANTE namespace, this is still
>> unacceptable as it adds new aliases for existing modifiers.
>> 
> hi Lucas:
> I got what you mean , I will check the whether the current existence can be reused.
> In principle, can existing modefiers cover my definition?
> 

hello Lucas:
I made it a little simpler: I removed what I didn't use in the code .
Keep only these:

#define DRM_FORMAT_MOD_VS_TYPE_NORMAL        0x00
#define DRM_FORMAT_MOD_VS_TYPE_COMPRESSED    0x01
#define DRM_FORMAT_MOD_VS_TYPE_CUSTOM_10BIT  0x02
#define DRM_FORMAT_MOD_VS_TYPE_MASK     ((__u64)0x3 << 54)

#define fourcc_mod_vs_code(type, val) \
	fourcc_mod_code(VS, ((((__u64)type) << 54) | (val)))

#define DRM_FORMAT_MOD_VS_NORM_MODE_MASK        0x1F
#define DRM_FORMAT_MOD_VS_LINEAR                0x00
#define DRM_FORMAT_MOD_VS_SUPER_TILED_XMAJOR    0x02
#define DRM_FORMAT_MOD_VS_SUPER_TILED_YMAJOR    0x03
#define DRM_FORMAT_MOD_VS_TILE_8X8              0x04
#define DRM_FORMAT_MOD_VS_TILE_8X4              0x07
#define DRM_FORMAT_MOD_VS_SUPER_TILED_XMAJOR_8X4    0x0B
#define DRM_FORMAT_MOD_VS_SUPER_TILED_YMAJOR_4X8    0x0C
#define DRM_FORMAT_MOD_VS_TILE_MODE4X4          0x15

#define fourcc_mod_vs_norm_code(tile) \
	fourcc_mod_vs_code(DRM_FORMAT_MOD_VS_TYPE_NORMAL, \
				(tile))

#define fourcc_mod_vs_custom_code(tile) \
	fourcc_mod_vs_code(DRM_FORMAT_MOD_VS_TYPE_CUSTOM_10BIT, \
				(tile))

I need you help to check what modifiers it should be (for existing modifiers) 

DRM_FORMAT_MOD_VS_LINEAR			----> DRM_FORMAT_MOD_LINEAR
DRM_FORMAT_MOD_VS_SUPER_TILED_XMAJOR 		----> ?
DRM_FORMAT_MOD_VS_SUPER_TILED_YMAJOR 		----> ?
DRM_FORMAT_MOD_VS_TILE_8X8           		----> ?  
DRM_FORMAT_MOD_VS_TILE_8X4              	----> ?                    
DRM_FORMAT_MOD_VS_SUPER_TILED_XMAJOR_8X4    	----> ?
DRM_FORMAT_MOD_VS_SUPER_TILED_YMAJOR_4X8    	----> ?
DRM_FORMAT_MOD_VS_TILE_MODE4X4          	----> DRM_FORMAT_MOD_VIVANTE_TILED

Thanks a million!!
Keith
>> Also any modifier additions should be in a separate patch and not
>> buried in another change.
>> 
> ok , no problem
>> Regards,
>> Lucas
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
