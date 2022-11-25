Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 94850638845
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:07:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 912423EF33
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:07:19 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id BEC593ED86
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:07:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=fmvGMa0d;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669374431;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sFEngP0X3fPVq5kw5eVn67kkqccTP4KFzznQM/5adG0=;
	b=fmvGMa0d3gTBzlMFP2M2wpSA1RVy4KQ/rfyOFxUao7neKl4EDor3hwfeqS3U8+sS9AtX2K
	qsJ30a9CjckwVgx2tMu8en0I1tT4wFB8Mu7R3uhCkXUJO+O/Fi+/5jd0hDSvSaVOYo9IiZ
	Xykfnj26gdmsv8+x60uX3Lw+faEjiYY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-447-0fiXpbPYN4qRSME9YTc4DA-1; Fri, 25 Nov 2022 06:07:10 -0500
X-MC-Unique: 0fiXpbPYN4qRSME9YTc4DA-1
Received: by mail-wm1-f70.google.com with SMTP id ay40-20020a05600c1e2800b003cf8aa16377so2276970wmb.7
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:07:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sFEngP0X3fPVq5kw5eVn67kkqccTP4KFzznQM/5adG0=;
        b=DvzJlbeqW0lkTyOqkhbVI1ji+lXTrnYb7d40B99i8dsyVi1XAVTojytaE4IqsXi7yj
         sr6Dm1ESS6QRZS0kB5yitkXKQPhLfX+NzF1cYVBfUbNXA6vjwbUznQuI19MhjRii1IDn
         kxwuYrBHAzRVJ5TbZpzUAQXATrYfhVzA8mjnfbLqRTmQRrxokckH64N4TsrD8/TKQnYL
         W7V6AyZCTqr12jaMHplJrH/aXDdg6kYW+MLh/LjJiCruiQdNvNpFccQO2XWU71Y0Y49o
         PkfO+L46PKgq/e+fSq+Mo0+2rU/Qb3GetLOKm6d7Xb1aK/9t4RwRp7SwPRqb0YNhFj84
         JQOQ==
X-Gm-Message-State: ANoB5pnaKVp07hYsm6jabV+rFzZbTtxGhCV91Uzf4n91zQRF4iiyfdLa
	8dAleeQA8xdsd04eYjHGuTHCxsc3jyVUniYImMRfUoMN55GP+e2/AnNTGWnU6T2A2SEdjh++9vf
	tcHi50Gf4C06VsSjN5FGW1ZsL6H8=
X-Received: by 2002:a05:600c:4e4c:b0:3cf:87c6:890b with SMTP id e12-20020a05600c4e4c00b003cf87c6890bmr27851416wmq.194.1669374429210;
        Fri, 25 Nov 2022 03:07:09 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4ekFpSGBe1M+kDVda3TnzsIFkEcOgKcp7ocT5w3PpSZSU0krdQ+qq0patBmQZVNGkBmTCp8w==
X-Received: by 2002:a05:600c:4e4c:b0:3cf:87c6:890b with SMTP id e12-20020a05600c4e4c00b003cf87c6890bmr27851391wmq.194.1669374428951;
        Fri, 25 Nov 2022 03:07:08 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id co29-20020a0560000a1d00b00236e834f050sm3703836wrb.35.2022.11.25.03.07.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:07:08 -0800 (PST)
Message-ID: <90c712ff-c5bb-ab44-fb1e-fcf7b055e908@redhat.com>
Date: Fri, 25 Nov 2022 12:07:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-14-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-14-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: BEC593ED86
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.50)[92.176.231.205:received,170.10.129.124:from,209.85.128.70:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: H6BKB3WTLVY235FEI7U333TYP2MQK66F
X-Message-ID-Hash: H6BKB3WTLVY235FEI7U333TYP2MQK66F
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 14/24] drm/vc4: txp: Reorder the variable assignments
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H6BKB3WTLVY235FEI7U333TYP2MQK66F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> The current order of variable assignments is unneccessarily complex,
> let's make it simpler.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
Much easier to follow indeed.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
