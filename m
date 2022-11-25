Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 56121638821
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:02:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64B213EF17
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:02:03 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id D5CA93ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:01:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=CvYH19UJ;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669374113;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TfA9A7l0JYE/L8ETH4uO/o+2VqeJpw2uLOXbWd1Oacg=;
	b=CvYH19UJaMPJqGoLIoAUHp0HMz57MuFdBt2ncJWc0neAYZbYbpMR013kfVpqFyqkKxgcd0
	qRIQ1MRj7ZW6WRoNKNIKwyuzX6zrg8UxAXiks7O83j2RosYenoDxZtSKgAX3LRr4sISw05
	pVv1/fhOqb66S5ZWoAqXrgDqYyghU4Y=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-335-3y5qDNOsNmCjjZXnM5fnRQ-1; Fri, 25 Nov 2022 06:01:52 -0500
X-MC-Unique: 3y5qDNOsNmCjjZXnM5fnRQ-1
Received: by mail-wm1-f70.google.com with SMTP id z15-20020a1c4c0f000000b003cf6f80007cso1682145wmf.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:01:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TfA9A7l0JYE/L8ETH4uO/o+2VqeJpw2uLOXbWd1Oacg=;
        b=1GQHbAzQTXu9wC+j9OAEaMWn0DwKPVKzwaLNAUDMIKXo90K4mKbQ5OATkAf/csjW/U
         HIp4pULGXq98cZyHCnsUE8fL+gS8AZSKudvn2IY872PuP75JnJOPJlurOjCFS2XHC95F
         YIZxz3TkoL5CuXhdzeNP8KAHJhqfPpd8NcY/jVa4xIwb4qgxX27WOZlElToCvDvNhqEh
         OaOyW76crJS/KpFIWSQl+zz0iv81E1nCGjtICglSZVCRgmxHnQojNVASeGjq5CxL5GsY
         MJzKC3JNO+t0Mi+TOyHHCPXArN/heOtTT0MMpAKbsfSg1H9GHrJFU/VEXO5YPHKNlNIP
         QqiQ==
X-Gm-Message-State: ANoB5pn0rKmiNB7CE2kzfAhjX9j7ZB9/yGYjLjOPVVLW2+zb64riWN4r
	GLev59DLkiDAG//h17+csKv+NOK3iyghVQz/PGBwyIxnBCIY23jLlMSWu33da5plF5P4DE+viuy
	LFk7YUFVzfSVIixSeb7TFI8+Kgdk=
X-Received: by 2002:a7b:c456:0:b0:3a5:f600:502e with SMTP id l22-20020a7bc456000000b003a5f600502emr18311879wmi.39.1669374111319;
        Fri, 25 Nov 2022 03:01:51 -0800 (PST)
X-Google-Smtp-Source: AA0mqf54zF2uRxU4RbTU39UVEvJ1RZet14YgzdlvBFjd7gpCV0KEEizmQ7IkJumuXXzHwnc2Bml0/Q==
X-Received: by 2002:a7b:c456:0:b0:3a5:f600:502e with SMTP id l22-20020a7bc456000000b003a5f600502emr18311846wmi.39.1669374111092;
        Fri, 25 Nov 2022 03:01:51 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id r11-20020a05600c35cb00b003a84375d0d1sm9723651wmq.44.2022.11.25.03.01.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:01:50 -0800 (PST)
Message-ID: <8df31d1d-1ed9-eb6e-80bd-1f82adfb0185@redhat.com>
Date: Fri, 25 Nov 2022 12:01:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-11-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-11-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: D5CA93ED3C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[92.176.231.205:received,209.85.128.70:received];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[170.10.129.124:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: R7EZRTDFNGSMQFJQEXIA7UAB5ZLDUTKT
X-Message-ID-Hash: R7EZRTDFNGSMQFJQEXIA7UAB5ZLDUTKT
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/24] drm/vc4: Constify container_of wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R7EZRTDFNGSMQFJQEXIA7UAB5ZLDUTKT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> None of our wrappers around container_of to access our objects from the
> DRM object pointer actually modify the latter.
> 
> Let's make them const.
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
