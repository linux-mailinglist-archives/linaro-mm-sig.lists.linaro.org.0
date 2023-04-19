Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 796216E70A3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Apr 2023 03:06:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89FF73F985
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Apr 2023 01:06:31 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lists.linaro.org (Postfix) with ESMTPS id 8D7303E923
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 01:06:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=lunn.ch header.s=20171124 header.b=XU4aeWxt;
	spf=pass (lists.linaro.org: domain of andrew@lunn.ch designates 156.67.10.101 as permitted sender) smtp.mailfrom=andrew@lunn.ch;
	dmarc=pass (policy=none) header.from=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Lms0C4cT+76fgagWleJqEZcrYl+boMnYrcMJr37IMKM=; b=XU4aeWxty1DBSslTGWkRcU1mrm
	T0cqHBLDYAbr7oK0uIUwI/s3ejCbybWEj1WbaM2EsGGK7koPF+irsx4ouxGne/f/FxPXILPpHrRcj
	6H/6VxYeNU3I2FptzANzwq3XyNC6OCxyZUCIwvuN3zuPTCS++SgiFq/lGwcY5BxkjGYQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1powHB-00AebN-CS; Wed, 19 Apr 2023 03:06:25 +0200
Date: Wed, 19 Apr 2023 03:06:25 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Justin Chen <justinpopo6@gmail.com>
Message-ID: <c967927d-c9ec-4453-8452-6e90f797bcfc@lunn.ch>
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
 <1681863018-28006-6-git-send-email-justinpopo6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1681863018-28006-6-git-send-email-justinpopo6@gmail.com>
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,armlinux.org.uk,amd.com];
	ASN(0.00)[asn:58222, ipnet:156.67.8.0/22, country:CH];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.583];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[lunn.ch:+];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8D7303E923
X-Spamd-Bar: --
Message-ID-Hash: PWJYIL7L6O55BPGERFFVUIIAGCKPPPIP
X-Message-ID-Hash: PWJYIL7L6O55BPGERFFVUIIAGCKPPPIP
X-MailFrom: andrew@lunn.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bcm-kernel-feedback-list@broadcom.com, justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 5/6] net: phy: bcm7xxx: Add EPHY entry for 74165
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PWJYIL7L6O55BPGERFFVUIIAGCKPPPIP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Apr 18, 2023 at 05:10:17PM -0700, Justin Chen wrote:
> From: Florian Fainelli <f.fainelli@gmail.com>
> 
> 74165 is a 16nm process SoC with a 10/100 integrated Ethernet PHY,
> utilize the recently defined 16nm EPHY macro to configure that PHY.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
