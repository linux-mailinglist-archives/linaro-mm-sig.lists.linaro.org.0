Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F1272E9C9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 19:29:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46A8C3F5FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 17:29:45 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.101])
	by lists.linaro.org (Postfix) with ESMTP id EE6EF3EDFD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jun 2023 17:29:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.101 as permitted sender) smtp.mailfrom=15330273260@189.cn
HMM_SOURCE_IP: 10.64.8.31:52324.1070341810
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.31])
	by 189.cn (HERMES) with SMTP id 3B4221001AF;
	Wed, 14 Jun 2023 01:29:27 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-xp9j7 with ESMTP id 1825973507f140c2a36a73e109c5300e for suijingfeng@loongson.cn;
	Wed, 14 Jun 2023 01:29:29 CST
X-Transaction-ID: 1825973507f140c2a36a73e109c5300e
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <793c4d53-2f45-3a0d-f16c-0607c9e5496a@189.cn>
Date: Wed, 14 Jun 2023 01:29:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Sui Jingfeng <suijingfeng@loongson.cn>, WANG Xuerui <kernel@xen0n.name>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
References: <20230520105718.325819-1-15330273260@189.cn>
 <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
 <14e56806-833b-c01b-ee74-8f16f48df2fc@loongson.cn>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <14e56806-833b-c01b-ee74-8f16f48df2fc@loongson.cn>
X-Rspamd-Queue-Id: EE6EF3EDFD
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.66 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.96)[99.83%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[114.242.206.180:received,183.61.185.101:from];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[loongson.cn,xen0n.name,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	NEURAL_HAM(-0.00)[-0.108];
	DMARC_NA(0.00)[189.cn];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	FREEMAIL_FROM(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QGMT5CSC7GU53T35GMISM7LJHOFV5CB2
X-Message-ID-Hash: QGMT5CSC7GU53T35GMISM7LJHOFV5CB2
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QGMT5CSC7GU53T35GMISM7LJHOFV5CB2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit


On 2023/6/14 00:20, Sui Jingfeng wrote:
> We will remote this workaround at next version.


remote -> remove

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
