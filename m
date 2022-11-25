Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0976387CE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:48:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 661223EF13
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 10:48:46 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id A72443EA4F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 10:48:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=IE2mwNmx;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669373318;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S8+u64ScLLmuZTRFUyAfXczflJucAb1iFk9pCBWNFeo=;
	b=IE2mwNmxX9twte6qGLqlDBcpi6Ut9yp1hT/QuJxa55Sv4YPeznyKHD5nnsZSFNey7Lujmq
	aqIE1E6kq9pkIJTo68FigoNwiGv50YG4EPH5Yr3C8kPR8fWXm31X8h5LQgvgN9zKjlbFzk
	MCSdBOcxmA83suNaZuIUHiUR9la4w5Q=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-488-B9R-Mzh1OtKnOPWxpB-lWQ-1; Fri, 25 Nov 2022 05:48:36 -0500
X-MC-Unique: B9R-Mzh1OtKnOPWxpB-lWQ-1
Received: by mail-wm1-f71.google.com with SMTP id 187-20020a1c02c4000000b003d016c210f7so4011343wmc.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 02:48:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S8+u64ScLLmuZTRFUyAfXczflJucAb1iFk9pCBWNFeo=;
        b=rehFD0lsX4wttD+1u7Ig8olESCe5Hfq+ZYoqLKKu6AHIPkaZzJvwD2FZq86iopgqY1
         qHG7mL1x0xdKcTmoCZ/GK0Uqx1/XAo9KzZu358PQMjtllaYb/+BUxL1PJVRwxa1FDr2i
         qO677WAPuvsoR1n8rGnYzbYkvXB1yV3ohnnKoKrk8+LV3O1yadGtoIgBQzPBIycqlJZp
         s6QpIVmxHRHU+Kn8z+mi/m6/YWyRFWEfjDn3xj78J7XcoHZp3DBI0VSGocA9KHQcF1yS
         gYEGyM4F/cCCTzFgAXqP7YDd8SuD6nPgvkW7AJoHGe4Mrp0+cWwPzOxqEqSYJ1p1Hmjd
         p2uA==
X-Gm-Message-State: ANoB5pnFBKI4kxF6JNnlKI7JEPBmMQiZbuyorOwIlSi5OkxS23MWMek6
	nm0X5GggSvHXbKbAJNt2Oo9trF+0XeIp3pacfbonET6vHLeTiJ5RoDseFevF2DbQFVsdO08VSsx
	mzCJevzuB654rYpFJGJWTqiKm04U=
X-Received: by 2002:a5d:4ec1:0:b0:241:f72c:1ca1 with SMTP id s1-20020a5d4ec1000000b00241f72c1ca1mr6336180wrv.395.1669373315769;
        Fri, 25 Nov 2022 02:48:35 -0800 (PST)
X-Google-Smtp-Source: AA0mqf68mWbhAYVWJ14W9k0aC8vAp+Trr4GSf385HbqRyPEST2QyT8ndyWd8MhWpBxlgO+Y4G88ZeQ==
X-Received: by 2002:a5d:4ec1:0:b0:241:f72c:1ca1 with SMTP id s1-20020a5d4ec1000000b00241f72c1ca1mr6336150wrv.395.1669373315494;
        Fri, 25 Nov 2022 02:48:35 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n11-20020adfe78b000000b0023677fd2657sm3555977wrm.52.2022.11.25.02.48.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 02:48:34 -0800 (PST)
Message-ID: <09086f46-8b21-9d72-d230-f59df7f2c51d@redhat.com>
Date: Fri, 25 Nov 2022 11:48:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-7-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-7-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: A72443EA4F
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[92.176.231.205:received,209.85.128.71:received];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[170.10.133.124:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.133.124:from];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SJTZXT6POQWHJ4XFRFHKXXJMMOJ3627R
X-Message-ID-Hash: SJTZXT6POQWHJ4XFRFHKXXJMMOJ3627R
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 07/24] drm/tests: helpers: Allow to pass a custom drm_driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SJTZXT6POQWHJ4XFRFHKXXJMMOJ3627R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> Some tests will need to provide their own drm_driver instead of relying
> on the dumb one in the helpers, so let's create a helper that allows to
> do so.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
